# frozen_string_literal: true
require File.expand_path('../boot', __FILE__)

require 'rails'

require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'

Bundler.require(*Rails.groups)

module Fitzdares
  # Rails application
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
  end
end
