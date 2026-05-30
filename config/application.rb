require_relative "boot"

require "rails"
require "active_model/railtie"
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module RailsApi
  class Application < Rails::Application
    config.load_defaults 7.1
    config.api_only = true
    config.active_support.to_time_preserves_timezone = :zone
  end
end
