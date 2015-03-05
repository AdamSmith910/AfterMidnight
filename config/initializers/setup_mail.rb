ActionMailer::Base.smtp_settings = {
    :address   => "smtp.gmail.com",
    :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :user_name => "adamsmith910@gmail.com",
    :password  => ENV["GMAIL_PASSWORD"], # smtp password is any valid api key
    :authentication => 'login' # Mandrill supports 'plain' or 'login'
  }