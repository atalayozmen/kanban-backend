Rails.configuration.auth0 = {
  audience: ENV['AUTH0_AUDIENCE'],
  client_id: ENV['AUTH0_CLIENT_ID'],
  client_secret: ENV['AUTH0_CLIENT_SECRET'],
  domain: ENV['AUTH0_DOMAIN']
}
