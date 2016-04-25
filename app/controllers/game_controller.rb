class GameController < ApplicationController

  def welcome
    render("welcome.html.erb")
  end

# can add all our code that we did in here for RPS... make a nice website... then copy them for scissors and paper
  def rock
  @computer_move = ["rock","paper","scissors"].sample
  if @computer_move == "rock"
    @result = "tied"
  end

  render("zebra.html.erb")
  end

end
