class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contacts])
    @contact.request = request
    if @contact.deliver
      flash[:success] = "We have received your enquiry, we will be in touch shortly"
      # render :json => "We have received you message, we will be in touch"
    else
      flash[:danger] = "Sorry, we could not deliver your message at this time"
      # render :json => { :errors => @contact.errors.full_messages }, status: :unprocessable_entity
    end
    redirect_to root_path
  end
end
