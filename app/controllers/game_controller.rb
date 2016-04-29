class GameController < ApplicationController
  def rock
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Rock"
    if @computer == @player
      @result = "tied"

    elsif @computer == "Paper"
      @result = "lost"

    else
      @result = "won"

    end
    render("rock.html.erb")
  end
  def paper
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Paper"
    if @computer == @player
      @result = "tied"

    elsif @computer == "Scissors"
      @result = "lost"

    else
      @result = "won"

    end
    render("paper.html.erb")
  end

  def scissors
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Scissors"
    if @computer == @player
      @result = "tied"

    elsif @computer == "Rock"
      @result = "lost"

    else
      @result = "won"

    end
    render("scissors.html.erb")
  end



end
