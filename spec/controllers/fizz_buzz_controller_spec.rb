# frozen_string_literal: true
require 'rails_helper'

RSpec.describe FizzBuzzController, type: :controller do
  describe 'GET index' do
    it 'responds with json' do
      get :index
      expect(response.headers['Content-Type']).to include 'application/json'
    end
  end
end
