require_relative 'boot'

require "rails"
# Pick the framework you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_controller/railtie"
require "active_mailer/railtie"
require "active_view/railtie"
require "active_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

#Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevcampPortfolio
	class Application < Rails::Application
		config.action_controller.permit_all_parameters = true
  end
end
