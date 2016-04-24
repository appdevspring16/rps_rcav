class GameController < ApplicationController

  def rock

    @computerPlays = ["rock","paper","scissors"].sample
    if @computerPlays == "scissors"
      @result = "You win"
    elsif @computerPlays == "rock"
      @result = "You tied"
    else
      @result = "You lose"
    end



    render("playRock.html.erb")
  end


  def paper

    @computerPlays = ["rock","paper","scissors"].sample
    if @computerPlays == "rock"
      @result = "You win"
    elsif @computerPlays == "paper"
      @result = "You tied"
    else
      @result = "You lose"
    end




    render("playPaper.html.erb")
  end

  def scissors

    @computerPlays = ["rock","paper","scissors"].sample
    if @computerPlays == "paper"
      @result = "You win"
    elsif @computerPlays == "scissors"
      @result = "You tied"
    else
      @result = "You lose"
    end




    render("playScissors.html.erb")
  end



end
