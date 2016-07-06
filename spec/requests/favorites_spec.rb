# frozen_string_literal: true

require 'rails_helper'

describe 'Favorites POST create', type: :request do
  subject { post fav_url, params }

  let(:params) { { user_id: '123abc', number: '13' } }

  it 'responds with :created and persists favorite' do
    subject

    expect(response.status).to eq(201)

    expect(Favorite.where(user_id: '123abc').first.number).to eq '13'
  end
end
