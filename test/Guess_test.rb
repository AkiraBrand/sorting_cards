##this is very much a work in progress
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'
require 'pry'

class GuessTest < Minitest::Test
    attr_acce card
  def test_it_exists
    guess_1 = Guess.new("10 of hearts", card)
    assert_instance_of Guess, guess_1
  end

end
