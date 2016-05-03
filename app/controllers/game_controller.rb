class GameController < ApplicationController
  def rps
    @user_move = params[:move]
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result = "tied"

    elsif (@user_move == "scissors" && @computer_move == "rock")||(@user_move =="paper" && @computer_move="scissors")||(@user_move=="rock"&&@computer_move=="paper")
      @result =  "lost"
    elsif (@user_move == "scissors" && @computer_move == "paper")||(@user_move =="paper" && @computer_move="rock")||(@user_move=="rock"&&@computer_move=="scissors")
      @result =  "won"
  end
    render("user_plays.html.erb")
  end

  def rock
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "You tied!"
    elsif @computer_move == "paper"
      @result = "You lost!"
    elsif @computer_move == "scissors"
      @result = "You won!"
    end

    render("rock.html.erb")
  end


  def paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "paper"
      @result = "You tied!"
    elsif @computer_move == "scissors"
      @result = "You lost!"
    elsif @computer_move == "rock"
      @result = "You won!"
    end

    render("paper.html.erb")
  end


  def scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "scissors"
      @result = "You tied!"
    elsif @computer_move == "rock"
      @result = "You lost!"
    elsif @computer_move == "paper"
      @result = "You won!"
    end

    render("scissors.html.erb")
  end
end
