# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { is_expected.to respond_to(:user_id) }
  it { is_expected.to respond_to(:number) }
end
