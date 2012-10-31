ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => '192.168.39.39:3000',
  :user_name            => 'id.email003@gmail.com',
  :password             => 'Hidden003',
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}    
ActionMailer::Base.default_url_options[:host] = "192.168.39.39:3000"  
