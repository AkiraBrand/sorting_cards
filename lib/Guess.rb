require 'pry'

class Guess
  attr_reader :response, :card
  #attr readers are methods that you can call OUTSIDE of the class. if you just need it
  #inside the class, dont worry about using an attr reader
  def initialize (response, card)
    @response = response
    @card = card
    #you can have more instance variables than you have arguement
  end

  # def correct?
  #  @response == "#{@card.value} of #{@card.suit}"
  # end

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
