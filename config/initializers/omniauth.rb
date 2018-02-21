OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :idplus, ENV['CLIENT_ID'], ENV['CLIENT_SECRET'],
           client_options: { site: ENV['SITE'],
                             authorize_url: ENV['AUTHORIZE_URL'],
                             token_url: ENV['TOKEN_URL']},
           platSite: ENV['PLATSITE'],
           scope: 'openid profile email',
           prompt: 'login',
           redirect_uri: ENV['REDIRECT_URL']
end
