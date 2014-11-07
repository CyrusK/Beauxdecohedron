# Load the Rails application.
require File.expand_path('../application', __FILE__)

ActionMailer::Base.smtp_settings = {
  :user_name => 'info@monisr.com',
  :password => '123321',
  :domain => 'www.incentru.com',
  :address => 'smtp.122.10.90.37',
  :port => 2525,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
