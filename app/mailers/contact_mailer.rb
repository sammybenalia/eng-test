class ContactMailer < ActionMailer::Base
  default from: "sammy@sammybenalia.com"
  def contact_email(contact)
    @contact = contact
    @email = contact.email
    mail(:to => "sammy@sammybenalia.com", :subject => "New Message from #{@contact.name}")
  end
end
