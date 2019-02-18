require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Scsportal2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.serve_static_assets = true
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

    config.autoload_paths += %W(#{Rails.root}/app/models/band)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.default_locale = :ja
    config.generators do |g|
     g.stylesheets false
    end

    config.to_prepare do
      Devise::SessionsController.skip_before_action :user_approval?, only: [:destroy]
      Devise::RegistrationsController.skip_before_action :user_approval?, only: [:edit, :update]
    end

  end
end
