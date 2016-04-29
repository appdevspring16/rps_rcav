class GameController < ApplicationController

  def rps
    
    tie = "Tie!"
    win = ["You won!", "Call your mom. Tell her she raised a winner.", "You won, but don't let it go to your head."].sample
    lose = ["Shoot, you lost.", "You lost. Bummer...", "Computer won, but he's open to a rematch."].sample

    @computer_move = ["rock", "paper", "scissors"].sample

    if @player_move == @computer_move
      @result = tie
    elsif @player_move == "rock" && @computer_move == "scissors"
      @result = win
    elsif @player_move == "paper" && @computer_move == "rock"
      @result = win
    elsif @player_move == "scissors" && @computer_move == "paper"
      @result = win
    else
      @result = lose
    end

  end

  def rock
    @player_move = "rock"
    rps
    render("rps.html.erb")
  end

  def paper
    @player_move = "paper"
    rps
    render("rps.html.erb")
  end

  def scissors
    @player_move = "scissors"
    rps
    render("rps.html.erb")
  end

end
