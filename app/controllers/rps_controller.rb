class RpsController < ApplicationController
  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lost"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "won"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "won"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lost"
    elsif @user_move == "scissors" && @computer_move == "pock"
      @result = "lost"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "won"
    end


    render("rock.html.erb")
  end
  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lost"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "won"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "won"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lost"
    elsif @user_move == "scissors" && @computer_move == "pock"
      @result = "lost"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "won"
    end


    render("paper.html.erb")
  end
  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lost"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "won"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "won"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lost"
    elsif @user_move == "scissors" && @computer_move == "pock"
      @result = "lost"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "won"
    end
    render("scissors.html.erb")
  end
end
