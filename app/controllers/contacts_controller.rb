class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:success] = "We have received your enquiry, we will be in touch shortly"
    else
      flash[:danger] = "Sorry, we could not deliver your message at this time"
    end
    redirect_to root_path
  end
end
