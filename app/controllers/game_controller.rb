class GameController < ApplicationController
  def user_plays_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "Tied"
    elsif @computer_move == "paper"
      @result = "Lost"
    else
      @result = "Won"
    end

    render("user_plays_rock.html.erb")
  end

  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "paper"
      @result = "Tied"
    elsif @computer_move == "scissors"
      @result = "Lost"
    else
      @result = "Won"
    end

    render("user_plays_paper.html.erb")
  end

  def user_plays_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "scissors"
      @result = "Tied"
    elsif @computer_move == "rock"
      @result = "Lost"
    else
      @result = "Won"
    end

    render("user_plays_scissors.html.erb")

  end
end
