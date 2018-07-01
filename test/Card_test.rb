require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'
require 'pry'

class CardTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("8", "hearts")
    assert_instance_of Card, card_1
  end


  def test_card_value
    card_2 = Card.new("9", "hearts")
    assert_equal "9", card_2.value
  end

  def card_suit
    card_3 = Card.new("10", "spades")
    assert_equal "spades", card_3.suit
  end

end
