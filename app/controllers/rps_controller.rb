class RpsController < ApplicationController


  def main
    render ("main.html.erb")
  end

  def rock
    @computer = ["rock","paper","scissors"][rand(3)]
    @player = "rock"
    if @computer == @player
      @result = "You tied!"
    elsif @computer == "paper"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("rock.html.erb")
  end

  def paper
    @computer = ["rock","paper","scissors"].sample
    @player = "paper"
    if @computer == @player
      @result = "You tied!"
    elsif @computer == "scissors"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer = ["rock","paper","scissors"].sample
    @player = "scissors"
    if @computer == @player
      @result = "You tied!"
    elsif @computer == "rock"
      @result = "You lost!"
    else
      @result = "You won!"
    end
    render("scissors.html.erb")
  end

end
