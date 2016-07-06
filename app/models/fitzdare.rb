# frozen_string_literal: true

# models the core to the required api
class Fitzdare
  include ActiveModel::Model
  attr_accessor :fizz_buzz, :favorites, :pager
end
