class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:error] = nil
    else
      flash[:error] = "Cannot sent message "
    end
    redirect_to root_path
  end
end
