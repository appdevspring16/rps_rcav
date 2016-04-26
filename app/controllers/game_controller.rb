class GameController < ApplicationController
  def user_plays_rock
    @computer_move = ["Rock","Paper","Scissors"].sample

    if @computer_move == "Rock"
      @result = "Tie"
    elsif @computer_move == "Paper"
      @result = "Lose"
    else
      @result = "Win"
      # @label = "label label-success"
      @label = '<span class="label label-success">'
    end
      # render("zebra.html.erb")
      render("user_plays_rock.html.erb")
    end
  end
