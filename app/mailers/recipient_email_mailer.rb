class RecipientEmailMailer < ApplicationMailer
  default from: 'no-reply@famaphotobooths.com'

  def transaction_preauthorized(transaction)
    @transaction = Transaction.find(transaction)
    @package = Product.find(@transaction.product_id)
    mail(to: @transaction.email, subject: 'Your booking confirmation')
  end

  def transaction_preauthorized_to_owner(transaction)
    @transaction = Transaction.find(transaction)
    @package = Product.find(@transaction.product_id)
    mail(to: "enquiries@famaphotobooths.com", subject: "#{@transaction.first_name} Just Booked an event")
  end
end