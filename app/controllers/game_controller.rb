class GameController < ApplicationController
  def rock

    @computer_move = ["rock","paper","scissors"].sample

    render("zebra.html.erb")
  end
end
