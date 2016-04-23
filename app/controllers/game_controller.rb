class GameController < ApplicationController
  def user_plays_rock
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "rock"
      @result = "Tie"
    elsif @computer_move == "paper"
      @result = "Lose"
    else
      @result = "Win"
    end
      # render("zebra.html.erb")
      render("user_plays_rock.html.erb")
    end
  end
