require 'Pry'
require_relative './Card'
require_relative './Guess'
#IM GON NEED SOME MOTHA FUCKIN ATTR READERS UP IN HERE
class Deck
 attr_reader :cards

 def initialize(cards)
  @cards = cards
  @empty_array = []
 end

 def count
   @cards.count
 end

end
