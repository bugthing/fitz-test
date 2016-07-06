# frozen_string_literal: true

# Controller handle saving favorites
class FavoritesController < ApplicationController
  def create
    fav = Favorite.new(create_params)
    render json: fav, status: :created if fav.save
  end

  def create_params
    params.require(:user_id)
    params.require(:number)
    params.permit(:user_id, :number)
  end
end
