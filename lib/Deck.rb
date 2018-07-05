require 'Pry'
require_relative './Card'
require_relative './Guess'

class Deck
 attr_reader :cards,
             :value,
             :suit,
             :deck

 def initialize(cards)
  @cards = cards
  @empty_array = []

 end

 def count
   @cards.count
 end


 def sort

   values = {"4 of Hearts" => 1,
             "5 of Diamonds" => 2,
             "Jack of Clubs" => 3,
             "Ace of Diamonds" => 4,
             "Ace of Spades" => 5
             }


   deck_length = @cards.length
   loop do
    switched = false
  (deck_length-1).times do |card|
    if values["#{@cards[card].value} of #{@cards[card].suit}"] > values["#{@cards[card +1].value} of #{@cards[card +1].suit}"]
      @cards[card], @cards[card +1] = @cards[card +1], @cards[card]
      switched = true
    end
   end
   break if not switched
 end
   @cards
 end


end
