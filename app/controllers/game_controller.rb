class GameController < ApplicationController

  def game_status
    # If user chooses rock
    if @player_move == "rock"
      if @computer_move == "rock"
        return "tie"
      elsif @computer_move == "paper"
        return "lose"
      elsif @computer_move == "scissors"
        return "win"
      end

    # If user chooses paper
    elsif @player_move == "paper"
      if @computer_move == "rock"
        return "win"
      elsif @computer_move == "paper"
        return "tie"
      elsif @computer_move == "scissors"
        return "lose"
      end

    # If user chooses scissors
    elsif @player_move == "scissors"
      if @computer_move == "rock"
        return "lose"
      elsif @computer_move == "paper"
        return "win"
      elsif @computer_move == "scissors"
        return "tie"
      end
    end
  end

  def rock
    @player_move = "rock"
    @computer_move = ["rock","paper","scissors"].sample
    @game_status = game_status
    if @game_status == "win"
      @game_status_styling = "success"
    elsif @game_status == "tie"
      @game_status_styling = "warning"
    elsif @game_status == "lose"
      @game_status_styling = "danger"
    end
    render("rps.html.erb")
  end

  def paper
    @player_move = "paper"
    @computer_move = ["rock","paper","scissors"].sample
    @game_status = game_status
    if @game_status == "win"
      @game_status_styling = "success"
    elsif @game_status == "tie"
      @game_status_styling = "warning"
    elsif @game_status == "lose"
      @game_status_styling = "danger"
    end
    render("rps.html.erb")
  end

  def scissors
    @player_move = "scissors"
    @computer_move = ["rock","paper","scissors"].sample
    @game_status = game_status
    if @game_status == "win"
      @game_status_styling = "success"
    elsif @game_status == "tie"
      @game_status_styling = "warning"
    elsif @game_status == "lose"
      @game_status_styling = "danger"
    end
    render("rps.html.erb")
  end

end
