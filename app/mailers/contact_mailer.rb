class ContactMailer < ActionMailer::Base
  default from: "Albany Dust Free Cleaning Server"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  def contact(contact)
    @contacts = contact
    @webMail = Contact.last
    

    mail to: "chriscrowd@gmailcom", subject: "Customer"
  end


end
