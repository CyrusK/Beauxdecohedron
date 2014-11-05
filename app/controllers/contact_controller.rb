class ContactController < ApplicationController
  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    last = params[:last]
    phone = params[:phone]
    country = params[:country]
    
    ContactMailer.contact_email(name, email, body, last, phone, country).deliver
    redirect_to contact_path, notice: 'Message sent'
  end
end