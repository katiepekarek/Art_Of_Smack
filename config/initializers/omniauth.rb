Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['CLIENT_KEY'], ENV['CLIENT_SECRET']
end
