class GameController < ApplicationController
  def rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "tied".to_s
    elsif @computer_move == "paper"
      @result = "lose".to_s
    elsif @computer_move == "scissors"
      @result = "win!".to_s
    end

    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "paper"
      @result = "tied".to_s
    elsif @computer_move == "scissors"
      @result = "lose".to_s
    elsif @computer_move == "rock"
      @result = "win!".to_s
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "scissors"
      @result = "tied".to_s
    elsif @computer_move == "rock"
      @result = "lose".to_s
    elsif @computer_move == "paper"
      @result = "win!".to_s
    end

    render("scissors.html.erb")
  end

end
