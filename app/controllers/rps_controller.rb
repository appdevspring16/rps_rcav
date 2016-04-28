class RpsController < ApplicationController


  def rock
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Rock"
    if @computer == @player
      @result = "You tied!"
      @label = "label-warning"
    elsif @computer == "Paper"
      @result = "You lost!"
      @label ="label-danger"
    else
      @result = "You won!"
      @label="label-success"
    end
    render("rock.html.erb")
  end

  def paper
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Paper"
    if @computer == @player
      @result = "You tied!"
      @label = "label-warning"
    elsif @computer == "Scissors"
      @result = "You lost!"
      @label ="label-danger"
    else
      @result = "You won!"
      @label="label-success"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer = ["Rock","Paper","Scissors"].sample
    @player = "Scissors"
    if @computer == @player
      @result = "You tied!"
      @label = "label-warning"
    elsif @computer == "Rock"
      @result = "You lost!"
      @label ="label-danger"
    else
      @result = "You won!"
      @label="label-success"
    end
    render("scissors.html.erb")
  end

end
