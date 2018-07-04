require 'pry'

class Guess
  attr_reader :response, :card
  #attr readers are methods that you can call OUTSIDE of the class. if you just need it
  #inside the class, dont worry about using an attr reader
  def initialize (response, card)
    @response = response
    @card = card
    #make a method HERE to smash the card arguments together
    #you can have more instance variables than you have arguement
  end

  # def correct?
  #  @response == "#{@card.value} of #{@card.suit}"
  # end

  # this is another way to do it that I wrote and don't want to lose
  def correct?
   if @response == "#{@card.value} of #{@card.suit}"
     true
   else
     false
   end
  end

  def feedback
    if self.correct? == true
    # if correct?(@response) == true
     "Correct!"
   else
     "Incorrect"
   end



 end



end
