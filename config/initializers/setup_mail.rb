ActionMailer::Base.smtp_settings = {
    :address   => "smtp.mandrill.com",
    :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :user_name => ENV["MANDRILL_USERNAME"],
    :password  => ENV["MANDRILL_PASSWORD"], # smtp password is any valid api key
    :authentication => 'plain' # Mandrill supports 'plain' or 'login'
  }