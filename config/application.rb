require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SimpleNest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # setting the ENV variables
	  config.before_configuration do
		  env_file = File.join(Rails.root, 'config', 'local_env.yml')
		  YAML.load(File.open(env_file)).each do |key, value|
		    ENV[key.to_s] = value
		  end if File.exists?(env_file)
	  end


	  config.action_mailer.smtp_settings = {
	  address: 'smtp.gmail.com',
	  port: 587,
	  user_name: ENV["GMAIL_USERNAME"],
	  password:  ENV["GMAIL_PASSWORD"],
	  authentication: :plain,
	  enable_starttls_auto: true,
	  domain: 'gmail.com'  # Added to see if it will work after a block by Google
	  }	  
  end
end
# I will leave it for a while and see if it works

