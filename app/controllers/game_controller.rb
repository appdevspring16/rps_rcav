class GameController < ApplicationController
  def user_plays_rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move=="rock"
      @result="Tie"
    elsif @computer_move=="paper"
      @result="Lose"
    elsif @computer_move=="scissors"
      @result="Win"
    end

    render("user_plays_rock.html.erb")
  end

  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move=="rock"
      @result="Win"
    elsif @computer_move=="paper"
      @result="Tie"
    elsif @computer_move=="scissors"
      @result="Lose"
    end

    render("user_plays_paper.html.erb")
  end
  def user_plays_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move=="rock"
      @result="Lose"
    elsif @computer_move=="paper"
      @result="Win"
    elsif @computer_move=="scissors"
      @result="Tie"
    end

    render("user_plays_scissors.html.erb")
  end
end
