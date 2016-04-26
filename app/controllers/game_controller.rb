# use capitals when defining a class

class GameController < ApplicationController

  def rock
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = ["won", "lost", "tied"]

    if @computer_move == "rock"
      @result = "tied"
    elsif @computer_move == "paper"
      @result = "lost"
    else
      @result = "won"

    end
    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = ["won", "lost", "tied"]

    if @computer_move == "paper"
      @result = "tied"
    elsif @computer_move == "scissors"
      @result = "lost"
    else
      @result = "won"

    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = ["won", "lost", "tied"]

    if @computer_move == "scissors"
      @result = "tied"
    elsif @computer_move =="rock"
      @result = "lost"
    else
      @result = "won"

    end
    render("scissors.html.erb")
  end


end
