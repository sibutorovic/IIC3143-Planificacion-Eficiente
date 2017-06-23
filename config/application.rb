require_relative 'boot'

require 'rails/all'
#require 'pdfkit'

#config.middleware.use PDFKit::Middleware, :print_media_type => true
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PlanificacionEficiente
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.enabled = true
    config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.serve_static_assets = true
  end
end
