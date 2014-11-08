# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings = {
  :user_name => 'info@incentru.com',
  :password => '123321!',
  :domain => 'www.incentru.com',
  :address => 'smtp.104.128.190.18',
  :port => 2096,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
