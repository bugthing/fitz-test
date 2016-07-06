# frozen_string_literal: true
# Controller to deal with fizz buzz game
class FizzBuzzController < ApplicationController
  def index
    FizzBuzzServices::Show.new(listener: self).call
  end

  def index_ok(resource)
    # could use ASM, but this will do while sketching
    render json: resource
  end

  def index_params
    { page: (params[:page] || 1),
      page_size: (params[:page_size] || 100),
      user_id: params[:user_id] }
  end
end
