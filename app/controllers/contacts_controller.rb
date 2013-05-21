class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      ContactMailer.contact_email(@contact).deliver
      redirect_to root_url, :notice => "Message Sent"
    else
      render 'new'
    end
  end
end
