Rails.application.configure do
 
  config.cache_classes = false

  config.eager_load = false

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address   => "smtp.mandrill.com",
    :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
    :enable_starttls_auto => true, # detects and uses STARTTLS
    :domain => "blogger.com",
    :user_name => "adamsmith910@aol.com",
    :password  => "0BfC2bhwZHRI9Y2P8iMK_Q", # smtp password is any valid api key
    :authentication => 'plain' # Mandrill supports 'plain' or 'login'
  }

  config.active_support.deprecation = :log

  config.active_record.migration_error = :page_load

  config.assets.debug = true

  config.assets.digest = true

  config.assets.raise_runtime_errors = true

  config.action_mailer.default_url_options = { host: "localhost:3000" }
end
