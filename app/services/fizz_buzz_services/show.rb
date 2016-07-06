# frozen_string_literal: true

require 'fizz_buzz'
require 'pager'

module FizzBuzzServices
  # constucts object to pass back to listener
  class Show
    attr_reader :listener

    def initialize(listener:)
      @listener = listener
    end

    def call
      listener.index_ok(resource)
    end

    private

    def resource
      Fitzdare.new fizz_buzz: fizz_buzz,
                   favorites: favorites,
                   pager: pager
    end

    def fizz_buzz
      FizzBuzz.new range: pager.start_number..pager.end_number
    end

    def favorites
      Favorite.where(user_id: user_id).map(&:number)
    end

    def pager
      @pager ||= Pager.new(page: page, page_size: page_size)
    end

    def page
      listener.index_params[:page]
    end

    def page_size
      listener.index_params[:page_size]
    end

    def user_id
      listener.index_params[:user_id]
    end
  end
end
