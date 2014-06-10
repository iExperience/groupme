ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "iexperience.co.za",
  :user_name            => "rafi",
  :password             => ENV['GMAIL_PASS'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = 
  "localhost:3000"
