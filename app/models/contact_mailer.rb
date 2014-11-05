class ContactMailer < ActionMailer::Base
  default to: # my email address
  
  def contact_email(name, email, body, last, phone, country)
    @name = name
    @email = email
    @body = body
    @last = last
    @phone = phone
    @country = country
    
    mail(from: email, subject: 'Contact Request', to: 'cskhajvandi@gmail.com')
  end
end