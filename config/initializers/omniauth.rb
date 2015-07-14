OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '777431072343142', '4cbc40723e1a771e6f8c569073054d26', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end