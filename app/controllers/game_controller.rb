class GameController < ApplicationController
  def rock

    @computer_move = ["rock", "paper", "scissor"].sample

    if @computer_move == "rock"
        @result = "Win!"

    end

    render("games/rock.html.erb")
  end
end
