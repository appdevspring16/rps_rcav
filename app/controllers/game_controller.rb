class GameController < ApplicationController

  def rps

    tie = "Tie!"
    win = "You won!"
    lose = "Computer won!"

    tie_color = "info"
    win_color = "success"
    lose_color = "danger"

    @computer_move = ["rock", "paper", "scissors"].sample
    @computer_graphic = @computer_move + "-r.png"

    if @player_move == @computer_move
      @result = tie
      @result_class = tie_color
      @p_move = tie_color
      @c_move = tie_color
    elsif @player_move == "rock" && @computer_move == "scissors"
      @result = win
      @result_class = win_color
      @p_move = win_color
      @c_move = lose_color
    elsif @player_move == "paper" && @computer_move == "rock"
      @result = win
      @result_class = win_color
      @p_move = win_color
      @c_move = lose_color
    elsif @player_move == "scissors" && @computer_move == "paper"
      @result = win
      @result_class = win_color
      @p_move = win_color
      @c_move = lose_color
    else
      @result = lose
      @result_class = lose_color
      @p_move = lose_color
      @c_move = win_color
    end

  end

  def rock
    @player_move = "rock"
    @player_graphic = @player_move + ".png"
    rps
    render("rps.html.erb")
  end

  def paper
    @player_move = "paper"
    @player_graphic = @player_move + ".png"
    rps
    render("rps.html.erb")
  end

  def scissors
    @player_move = "scissors"
    @player_graphic = @player_move + ".png"
    rps
    render("rps.html.erb")
  end

end
