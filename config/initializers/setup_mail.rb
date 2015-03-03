ActionMailer::Base.smtp_settings = {
    :address   => "smtp.mandrill.com",
    :port      => 25, # ports 587 and 2525 are also supported with STARTTLS
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :user_name => ENV["mandrill_email"],
    :password  => ENV["mandrill_password"], # smtp password is any valid api key
    :authentication => 'login' # Mandrill supports 'plain' or 'login'
  }