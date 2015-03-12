Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET']
  provider :twitter, ENV['TWITTER_ID'], ENV['TWITTER_SECRET']

  # provider :yelp, ENV["Consumer_Key"], ENV["Consumer_Secret"]
end