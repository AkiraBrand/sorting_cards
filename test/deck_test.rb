require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/Deck'
require_relative '../lib/Card'
require_relative '../lib/Guess'
require 'pry'

class DeckTest < Minitest::Test

 def test_deck_object_exists
   card_1 = Card.new("3","Hearts")
   card_2 = Card.new("4", "Clubs")
   card_3 = Card.new("5", "Diamonds")
   deck = Deck.new([card_1, card_2, card_3])
   assert_instance_of Deck, deck
   #binding.pry
 end

 def test_cards_method
   card_1 = Card.new("3","Hearts")
   card_2 = Card.new("4", "Clubs")
   card_3 = Card.new("5", "Diamonds")
   deck = Deck.new([card_1, card_2, card_3])
   #binding.pry
   assert_equal [card_1, card_2, card_3], deck.cards
  # binding.pry
 end

 def test_how_many_cards_are_in_this_deck
   card_1 = Card.new("3","Hearts")
   card_2 = Card.new("4", "Clubs")
   card_3 = Card.new("5", "Diamonds")
   deck = Deck.new([card_1, card_2, card_3])
   #binding.pry
   assert_equal 3, deck.count
 end


 def test_if_sort_method_works

  card_1 = Card.new("4","Hearts")
  card_2 = Card.new("Jack", "Clubs")
  card_3 = Card.new("5", "Diamonds")
  card_4 = Card.new("Ace", "Spades")
  card_5 = Card.new("Ace", "Diamonds")
  deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
  binding.pry
  assert_equal [card_1, card_3, card_2, card_5, card_4], deck.sort
 end

end
