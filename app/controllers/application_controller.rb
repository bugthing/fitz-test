# frozen_string_literal: true

# Top level controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
end