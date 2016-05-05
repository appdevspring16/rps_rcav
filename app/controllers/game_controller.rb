class GameController < ApplicationController

  def rock

    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move =="rock"
      @result = "tied"
    end

    if @computer_move =="paper"
      @result = "lose"

    end

    if @computer_move =="scissors"
      @result = "win"

    end

    render("zebra.html.erb")
  end

end
