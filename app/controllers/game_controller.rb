class GameController < ApplicationController
  def rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result == "tied"
    end

    render("rock.html.erb")
  end
end
