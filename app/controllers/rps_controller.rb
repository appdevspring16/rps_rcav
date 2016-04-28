class RpsController < ApplicationController


  def main
    render ("main.html.erb")
  end

  def rock
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Rock"
    if @computer == @player
      @result = "You tied!"
    elsif @computer == "Paper"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("rock.html.erb")
  end

  def paper
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Paper"
    if @computer == @player
      @result = "You tied!"
    elsif @computer == "Scissors"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Scissors"
    if @computer == @player
      @result = "You tied!"
    elsif @computer == "Rock"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("scissors.html.erb")
  end

end
