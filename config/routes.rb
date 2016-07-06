# frozen_string_literal: true
Rails.application.routes.draw do
  get '/fizz', to: 'fizz_buzz#index'
  post '/fav', to: 'favorites#create'
  root 'welcome#index'
end
