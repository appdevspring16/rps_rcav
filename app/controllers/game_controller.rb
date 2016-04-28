class GameController < ApplicationController
  def rock

    @computer_move = ["rock", "paper", "scissors"].sample


    if @computer_move == "rock"
      @result = "tie!"
      @image = "rock"


    elsif @computer_move == "paper"
      @result = "lose!"
      @image = "paper"

    elsif @computer_move == "scissors"
      @result = "win!"
      @image = "scissors"

    end
      render("zebra.html.erb")
  end

  def paper

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "win!"
      @image = "rock"

    elsif @computer_move == "paper"
      @result = "tie!"
      @image = "paper"

    elsif @computer_move == "scissors"
      @result = "lose!"
      @image = "scissors"

    end
      render("tiger.html.erb")
  end

  def scissors

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "lose!"
      @image = "rock"

    elsif @computer_move == "paper"
      @result = "win!"
      @image = "paper"

    elsif @computer_move == "scissors"
      @result = "tie!"
      @image = "scissors"

    end
      render("lion.html.erb")
  end




end
