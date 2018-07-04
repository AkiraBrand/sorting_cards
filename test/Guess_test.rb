##this is very much a work in progress
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/Guess'
require_relative '../lib/Card'
require 'pry'

class GuessTest < Minitest::Test
  def test_card_object_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
    #binding.pry
  end

  def test_it_has_a_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    #binding.pry
    assert_equal "10 of Hearts", guess.response
    #binding.pry
  end

  def test_is_user_guess_correct
   card = Card.new("10", "Hearts")
   guess = Guess.new("10 of Hearts", card)
   assert_equal true, guess.correct?
   #binding.pry
  end

  def test_if_feedback_returns_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", guess.feedback
    #binding.pry
  end

  def test_it_exits_second_instance
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    #binding.pry
    assert_instance_of Guess, guess
    assert_instance_of Card, guess.card
    #binding.pry
  end

  def test_it_has_a_response
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of diamonds", card)
    #binding.pry
    assert_equal "2 of diamonds", guess.response
  end

  def test_is_user_guess_correct
   card = Card.new("Queen", "Clubs")
   guess = Guess.new("2 of diamonds", card)
   assert_equal false, guess.correct?
   #binding.pry
  end

  def test_the_response_is_incorrect
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of diamonds", card)
    #binding.pry
    assert_equal "Incorrect", guess.feedback
  end

  def test_card_1_exists
    card_1 = Card.new("3","Hearts")
    assert_instance_of Card, card
  end

end
