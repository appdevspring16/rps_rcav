class GameController < ApplicationController
  def rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "Tie"
    elsif @computer_move == "paper"
      @result = "Lose"
    elsif @computer_move == "scissors"
      @result = "Win"
    end
    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "Win"
    elsif @computer_move == "paper"
      @result = "Tie"
    elsif @computer_move == "scissors"
      @result = "Lose"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "Lose"
    elsif @computer_move == "paper"
      @result = "Win"
    elsif @computer_move == "scissors"
      @result = "Tie"
    end
    render("scissors.html.erb")
  end

end
