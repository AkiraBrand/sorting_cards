require 'pry'

class Guess
  attr_reader :response, :card
  #attr readers are methods that you can call OUTSIDE of the class.
  def initialize (response, card)
    @response = response
    @card = card
    #you can have more instance variables than you have arguement
  end
  
  def correct?
   if @response == "#{@card.value} of #{@card.suit}"
     true
   else
     false
   end
  end

  def feedback
    if self.correct? == true
     "Correct!"
   else
     "Incorrect"
   end
  end



end
