# frozen_string_literal: true
require 'fizz_buzz'

describe FizzBuzz do
  subject(:obj) { described_class.new(range: range) }

  let(:range) { 1..8 }

  describe '#each' do
    it 'yields a game of fizz buzz' do
      expect { |g| obj.each(&g) }.to yield_successive_args(
        [1, '1'],
        [2, '2'],
        [3, 'Fizz'],
        [4, '4'],
        [5, 'Buzz'],
        [6, 'Fizz'],
        [7, '7'],
        [8, '8']
      )
    end
  end
end
