require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module RailsMarionetteExample
  class Application < Rails::Application
  end
end
