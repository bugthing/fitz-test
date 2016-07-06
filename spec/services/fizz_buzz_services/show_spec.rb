# frozen_string_literal: true
require 'rails_helper'

describe FizzBuzzServices::Show do
  let(:service) { described_class.new listener: listener }

  let(:listener) { spy(index_params: {}) }

  describe '#call' do
    subject { service.call }

    it 'call back to the lister with correct object' do
      subject

      expect(listener).to have_received(:index_ok).with(
        duck_type(:fizz_buzz, :favorites, :pager)
      )
    end
  end
end
