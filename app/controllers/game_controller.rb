class GameController < ApplicationController
  def Rock
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
    render("Rock.html.erb")
  end
  def Paper
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
    render("Paper.html.erb")
  end
  def Scissors
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
    render("Scissors.html.erb")
  end
end
