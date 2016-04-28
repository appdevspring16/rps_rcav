class GameController < ApplicationController
  def rock
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @result = "tied".to_s
    elsif @computer_move == "Paper"
      @result = "lose".to_s
    elsif @computer_move == "Scissors"
      @result = "win!".to_s
    end

    render("rock.html.erb")
  end

  def paper
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Paper"
      @result = "tied".to_s
    elsif @computer_move == "Scissors"
      @result = "lose".to_s
    elsif @computer_move == "Rock"
      @result = "win!".to_s
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @result = "tied".to_s
    elsif @computer_move == "Rock"
      @result = "lose".to_s
    elsif @computer_move == "Paper"
      @result = "win!".to_s
    end

    render("scissors.html.erb")
  end

end
