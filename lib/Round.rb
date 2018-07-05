require 'Pry'
require_relative './Card'
require_relative './Guess'
require_relative './Deck'

class Round
 attr_reader :deck,
             :guesses,
             :response,
             :value,
             :suit,
             :number_correct

 def initialize (deck)
   @deck = deck
   @guesses = []
   @card_number = 0
   @number_correct = 0
   #i think i should not do this in the initialize but in another method that calls for
   #an argument. we will see.
   #@guesses = []
 end

  def current_card
   deck.cards[@card_number]
  end

  def record_guess(user_guess)
    guess = Guess.new("#{user_guess[:value]} of #{user_guess[:suit]}", self.current_card)
    @guesses << guess
    @card_number =+ 1
    if guess.feedback == "Correct!"
      @number_correct =+ 1
    end
   return guess
  end

  def count
    @guesses.count
  end

  def percent_correct
   final_count = @guesses.count.to_f
   number_correct = @number_correct.to_f
   percentage = number_correct/final_count * 100
  end


end
