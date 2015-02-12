Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '797155787025006', 'a5697d9ec5e60c247905d2786cc99e9a', scope: 'publish_actions'
end