OmniAuth.config.allowed_request_methods = [:post, :get]
OmniAuth.config.silence_get_warning = true

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], { 
      {:scope => 'email', 'public_profile', :client_options => { :ssl => { 
          ca_file: '/usr/lib/ssl/certs/ca-certificates.crt',
          ca_path: "/private/etc/ssl/certs"
      }}
    }
  end 