require_relative 'boot'

require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)
require "uswds/rails"

module TestApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

