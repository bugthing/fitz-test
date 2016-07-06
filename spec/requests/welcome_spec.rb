# frozen_string_literal: true

require 'rails_helper'

describe 'Welcome GET Index', type: :request do
  subject { get root_url, params }

  let(:params) { { page: 2, page_size: 10 } }

  it 'responds with :ok' do
    subject
    expect(response.status).to eq(200)
  end
end
