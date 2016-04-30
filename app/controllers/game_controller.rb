class GameController < ApplicationController
  def user_plays_rock
    @user_move = "Rock"
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "rock"
      @result  = "Tie"
    elsif @computer_move == "paper"
      @result = "Lose"
    else
      @result = "Win"
    end

    render("zebra.html.erb")
  end

  def user_plays_paper
    @user_move = "Paper"
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "rock"
      @result  = "Win"
    elsif @computer_move == "paper"
      @result = "Tie"
    else
      @result = "Lose"
    end

    render("zebra.html.erb")
  end

  def user_plays_scissors
    @user_move = "Scissors"
    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move == "rock"
      @result  = "Lose"
    elsif @computer_move == "paper"
      @result = "Win"
    else
      @result = "Tie"
    end

    render("zebra.html.erb")
  end

end
