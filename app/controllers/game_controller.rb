class GameController < ApplicationController
  def user_plays_rock
    @your_move = "Rock"
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "rock"
      @result = "Tie"
    elsif @computer_move == "paper"
      @result="Lose"
    else
      @result = "Win"
    end
render("zebra.html.erb")
  end
  def user_plays_paper
    @your_move = "Paper"
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "paper"
      @result = "Tie"
    elsif @computer_move == "scissors"
      @result="Lose"
    else
      @result = "Win"
    end
render("zebra.html.erb")
  end
  def user_plays_scissors
    @your_move = "Scissors"
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "scissors"
      @result = "Tie"
    elsif @computer_move == "rock"
      @result="Lose"
    else
      @result = "Win"
    end
render("zebra.html.erb")
  end
end
