require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/Deck'
require_relative '../lib/Card'
require_relative '../lib/Guess'
require_relative '../lib/Round'
require 'pry'

class RoundTest < Minitest::Test

  def test_it_exists
   card_1 = Card.new("3","Hearts")
   card_2 = Card.new("4", "Clubs")
   deck = Deck.new([card_1, card_2])
   round = Round.new(deck)
   assert_instance_of Round, round
  end

  def test_deck_method_executes
   card_1 = Card.new("3","Hearts")
   card_2 = Card.new("4", "Clubs")
   #binding.pry
   deck = Deck.new([card_1, card_2])
   #binding.pry
   round = Round.new(deck)
   #binding.pry
   #I want the .deck method to go to the round object and tell me what the deck
   #instance id is with all the other stuff in it
   assert_equal deck, round.deck
  end

  def test_guesses_method_returns_empty_array
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    #binding.pry
    deck = Deck.new([card_1, card_2])
    #binding.pry
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_what_the_current_card_is
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    #binding.pry
    round = Round.new(deck)
    assert_equal round.current_card, card_1
  end

  def test_record_guess_for_3_and_hearts
   card_1 = Card.new("3","Hearts")
   card_2 = Card.new("4", "Clubs")
   deck = Deck.new([card_1, card_2])
   round = Round.new(deck)
   #binding.pry
   round.record_guess({value: "3", suit: "Hearts"})
  end

  def test_count_method_returns_1
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    #binding.pry
    assert_equal 1, round.guesses.count
  end

  def test_is_round_guess_feedback_1_returns_corrrect
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    #binding.pry
    assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_number_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    #binding.pry
    assert_equal 1, round.number_correct
  end

  def test_record_the_guess_Jack_and_Diamonds
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    #binding.pry
    round.record_guess({value: "3", suit: "Hearts"})
    round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 2, round.guesses.count
  end

  def test_percent_correctcard_1
  card_1 = Card.new("3","Hearts")
  card_2 = Card.new("4", "Clubs")
  deck = Deck.new([card_1, card_2])
  round = Round.new(deck)
  round.record_guess({value: "3", suit: "Hearts"})
  round.record_guess({value: "Jack", suit: "Diamonds"})
  binding.pry
  assert_equal 50, round.percent_correct
  end

end
