require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require_relative '../lib/guess'
require 'pry'

class CardTest < Minitest::Test

  def test_it_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_something
    skip
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    p guess.card
  end

  def test_card_value
    skip
    card_2 = Card.new("10", "hearts")
    assert_equal "10", card_2.value
    binding.pry
  end

  def test_card_suit
    skip
    card_3 = Card.new("10", "spades")
    assert_equal "spades", card_3.suit
    binding.pry
  end

  def test_is_guess_correct?
    skip
   card_4 = Card.new("10", "spades")
   guess_1 = Guess.new("10 of spades", card_4)
   assert_equal guess_1, card_4
  end

end
