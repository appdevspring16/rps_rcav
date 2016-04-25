class GameController < ApplicationController
  def rock

    @computer_move = ["rock","paper","scissors"].sample
    @user_move = "rock"

    if @user_move==@computer_move
      @result = "tied"

    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "lost"

    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "won"
    end

    render("rock.html.erb")
  end

  def scissors

    @computer_move = ["rock","paper","scissors"].sample
    @user_move = "scissors"

    if @user_move==@computer_move
      @result = "tied"

    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "lost"

    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "won"
    end

    render("scissors.html.erb")
  end

  def paper

    @computer_move = ["rock","paper","scissors"].sample
    @user_move = "paper"

    if @user_move==@computer_move
      @result = "tied"

    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "lost"

    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "won"
    end

    render("paper.html.erb")
  end
end
