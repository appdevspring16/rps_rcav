class GameController < ApplicationController
  def user_plays_rock
    @computer_move = ["rock", "paper", "scissors"].sample
    @player_move = "rock"
    if @computer_move == "rock"
      @result = "Tie"

    elsif  @computer_move == "paper"
      @result = "Lose"

    else
      @result = "Win"

    end

    render("zebra.html.erb")
    # render says what html page to display
  end
  def user_plays_scissors
    @computer_move = ["rock", "paper", "scissors"].sample
    @player_move = "scissors"
    if @computer_move == "rock"
      @result = "Lose"

    elsif  @computer_move == "paper"
      @result = "Win"

    else
      @result = "Tie"

    end

    render("zebra.html.erb")
    # render says what html page to display
  end
  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample
    @player_move = "paper"
    if @computer_move == "rock"
      @result = "Win"

    elsif  @computer_move == "paper"
      @result = "Tie"

    else
      @result = "Lose"

    end

    render("zebra.html.erb")
    # render says what html page to display
  end
end
