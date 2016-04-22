class GameController < ApplicationController

  def rock
  @computer_move = ["rock","paper","scissors"].sample

# can add all our code that we did in here for RPS... make a nice website

  if @computer_move == "rock"
    @result = "tied"
  end

  render("zebra.html.erb")

  end

end
