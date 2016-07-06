# frozen_string_literal: true

# Given a range plays fizz-buzz
class FizzBuzz
  include Enumerable

  attr_reader :range

  def initialize(range:)
    @range = range
  end

  def each
    range.each do |i|
      str = ''
      str += 'Fizz' if i.modulo(3) == 0
      str += 'Buzz' if i.modulo(5) == 0
      str = i.to_s if str.empty?

      yield i, str
    end
  end
end
