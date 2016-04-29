class GameController < ApplicationController

  def user_plays_rock
    @computer_move = ["rock", "paper", "scissors"].sample
    @user_move = "rock"

    if (@computer_move == "rock")
      @result = "tied"
    elsif (@computer_move == "paper")
      @result = "lost"
    else
      @result = "won"
    end

    # @result = "don't know yet"
    render("common.html.erb")
  end

  def user_plays_scissors
    @computer_move = ["rock", "paper", "scissors"].sample
    @user_move = "scissors"

    if (@computer_move == "scissors")
      @result = "tied"
    elsif (@computer_move == "rock")
      @result = "lost"
    else
      @result = "won"
    end

    # @result = "don't know yet"

    render("common.html.erb")
  end

  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample
    @user_move = "paper"

    if (@computer_move == "paper")
      @result = "tied"
    elsif (@computer_move == "scissors")
      @result = "lost"
    else
      @result = "won"
    end

    # @result = "don't know yet"

    render("common.html.erb")
  end

end
