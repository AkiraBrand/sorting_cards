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

  def test_card_1_exists
    card_1 = Card.new("3","Hearts")
    assert_instance_of Card, card_1
  end

  def test_card_2_exists
    card_2 = Card.new("4", "Clubs")
    assert_instance_of Card, card_2
  end

  def test_card_3_exists
    card_3 = Card.new("5", "Diamonds")
    assert_instance_of Card, card_3
  end

end
