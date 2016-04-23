class GameController < ApplicationController
  def rock

@computer_move= ["rock", "paper", "scissors"].sample

if @computer_move=="rock"
  @result="You tied"
end
  render("zebra.html.erb")
  end
end
