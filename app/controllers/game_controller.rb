class GameController < ApplicationController
  def user_plays_rock
    @computer_move=["rock","paper", "scissors"].sample
    if @computer_move == "rock"
      @result = "You tied!"
    elsif @computer_move == "paper"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("rock.html.erb")
  end

  def user_plays_paper
    @computer_move=["rock","paper", "scissors"].sample
    if @computer_move == "paper"
      @result = "You tied!"
    elsif @computer_move == "rock"
      @result = "You won!"
    else
      @result = "You lost!"
    end
    render("paper.html.erb")
  end

  def user_plays_scissors
    @computer_move=["rock","paper", "scissors"].sample
    if @computer_move == "scissors"
      @result = "You tied!"
    elsif @computer_move == "rock"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("scissors.html.erb")
  end
end
