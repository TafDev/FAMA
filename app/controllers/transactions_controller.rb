class TransactionsController < ApplicationController
  before_action :get_product, only: [:preload, :create]

  def preload
    today = Date.today
    bookings = @product.transactions.where("date >= ?", today).order('date asc')

    dates = bookings.map(&:date)
    render json: dates
  end

  def new
    @transaction = Transaction.new(amount: params[:amount])
    @product = Product.find(params[:product_id])
  end

  def create
    get_price

    @tx = Transaction.create!(transaction_params.merge(amount: @price))
    if @tx
      values =  {
        business:'enquiries@famaphotobooths.com',
        cmd: '_xclick',
        upload: 1,
        notify_url: 'https://www.famaphotobooths.com/notify',
        currency_code: 'GBP',
        amount: @price,
        item_name: @product.name,
        item_number: @tx.id,
        quantity: '1',
        return: 'https://www.famaphotobooths.com/thank_you'
      }
      redirect_to "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
    else
      flash[:red] = "sorry your transaction could not be completed at this time"
      redirect_to :back
    end
  end


  protect_from_forgery except: [:notify]
  def notify
    params.permit!
    status = params[:payment_status]
    tx = Transaction.find(params[:item_number])
    if status == "Completed" || "Pending"
      tx.update_attributes tx_status: status
      Delayed::Job.enqueue(ReceiptEmailJob.new(tx.id), priority: 9)
    else
      tx.update_attributes tx_status: "Not Completed"
      flash[:red] = "Sorry your payment was not accepted please Contact Us directly"
    end
    render :nothing => true, :status => 200
  end

  protect_from_forgery except: [:thank_you]
  def thank_you
  end

  private

  def get_product
    @product = Product.find(params[:product_id])
  end

  def get_price
    if @product.percent_discount
      @price = @product.price_by_percent_discount
    elsif @product.amount_discount
      @price = @product.price_by_amount_discount
    else
      @price = @product.price
    end
  end

  def transaction_params
    params.require(:transaction).permit(:first_name,
                                        :last_name,
                                        :product_id,
                                        :amount,
                                        :phone_number,
                                        :middle_name,
                                        :email,
                                        :date,
                                        :time,
                                        :postcode,
                                        :address,
                                        :notes,
                                        :latitude,
                                        :longitude,
                                        :tx_status,
                                        :payment_type
    )
  end
end
