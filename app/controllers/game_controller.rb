class GameController < ApplicationController
  def rock
    @computer_move = ["rock","scissors","paper"].sample
    if @computer_move == "rock"
      @result = "tied"
    render("zebra.html.erb")
  end
end
