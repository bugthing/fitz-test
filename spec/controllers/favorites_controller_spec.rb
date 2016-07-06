# frozen_string_literal: true
require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do
  describe 'POST create' do
    let(:params) { { user_id: '123', number: '1' } }
    it 'responds with json' do
      post :create, params
      expect(response.headers['Content-Type']).to include 'application/json'
    end
  end
end
