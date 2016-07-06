# frozen_string_literal: true

require 'rails_helper'

describe 'FizzBuzz GET Index', type: :request do
  subject { get fizz_url, params }

  let(:params) { { page: 2, page_size: 10 } }

  it 'responds with :ok' do
    subject

    expect(response.status).to eq(200)
  end

  it 'responds with correct json' do
    subject

    expect(response.body).to eq(
      '{"fizz_buzz":'\
      '[[11,"11"],[12,"Fizz"],[13,"13"],[14,"14"],'\
      '[15,"FizzBuzz"],[16,"16"],[17,"17"],[18,"Fizz"],'\
      '[19,"19"],[20,"Buzz"]]'\
      ',"favorites":[],"pager":{"page":2,"page_size":10}}'
    )
  end

  context 'when passed in user has favorites' do
    let(:params) { { page: 2, page_size: 10, user_id: '123abc' } }

    before do
      Favorite.create user_id: '123abc', number: 'l3'
    end

    it 'responds with users favorites' do
      subject

      expect(JSON.parse(response.body)).to match(a_hash_including(
                                                   'favorites' => ['l3']
      ))
    end
  end
end
