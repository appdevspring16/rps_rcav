class GameController < ApplicationController
  def rock

    @computer_move = ["rock", "paper", "scissor"].sample

    if @computer_move == "rock"
        @result = "Tied!"

    elsif @computer_move == "paper"
      @result = "Lose!"

    elsif @computer_move == "scissor"
      @result = "Win!"
    end

    render("games/rock.html.erb")
  end

  def paper

    @computer_move = ["rock", "paper", "scissor"].sample

    if @computer_move == "rock"
        @result = "Win!"

    elsif @computer_move == "paper"
        @result = "Tied!"

    elsif @computer_move == "scissor"
        @result = "Lose!"
    end

    render("games/paper.html.erb")
  end

  def scissor

    @computer_move = ["rock", "paper", "scissor"].sample

    if @computer_move == "rock"
        @result = "Lose!"

    elsif @computer_move == "paper"
        @result = "Win!"

    elsif @computer_move == "scissor"
        @result = "Tied!"
    end

    render("games/scissor.html.erb")
  end

end
