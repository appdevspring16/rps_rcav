class GameController < ApplicationController
  def rock
    @computer_move = ["Rock","Paper","Scissors"].sample
    if @computer_move == "Rock"
        @result = "Tied"
    end
    if @computer_move == "Paper"
        @result = "Lost"
    end
    if @computer_move == "Scissors"
        @result = "Won"
    end
    render("rock.html.erb")
  end
  def paper
    @computer_move = ["Rock","Paper","Scissors"].sample
    if @computer_move == "Paper"
        @result = "Tied"
    end
    if @computer_move == "Scissors"
        @result = "Lost"
    end
    if @computer_move == "Rock"
        @result = "Won"
    end
    render("paper.html.erb")
  end
  def scissors
    @computer_move = ["Rock","Paper","Scissors"].sample
    if @computer_move == "Scissors"
        @result = "Tied"
    end
    if @computer_move == "Rock"
        @result = "Lost"
    end
    if @computer_move == "Paper"
        @result = "Won"
    end
    render("scissors.html.erb")
  end
end
