class GameController < ApplicationController

  def user_plays_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "Tie"
      @banner = "label-warning"
    elsif @computer_move == "paper"
      @result = "Lose"
      @banner = "label-danger"
    else
      @result = "Win"
      @banner = "label-success"
    end
    render("rock.html.erb")
  end

  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "Win"
      @banner = "label-success"
    elsif @computer_move == "paper"
      @result = "Tie"
      @banner = "label-warning"
    else
      @result = "Lose"
      @banner = "label-danger"
    end
    render("paper.html.erb")
  end

  def user_plays_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "Lose"
      @banner = "label-danger"
    elsif @computer_move == "paper"
      @result = "Win"
      @banner = "label-success"
    else
      @result = "Tie"
      @banner = "label-warning"
    end
    render("scissors.html.erb")
  end

end
