class GameController < ApplicationController

  def rock

    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move =="rock"
      @result = "tied"
    end

    if @computer_move =="paper"
      @result = "lose"

    end

    if @computer_move =="scissors"
      @result = "win"

    end

    render("zebra.html.erb")
  end

  def paper

    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move =="paper"
      @result = "tied"
    end

    if @computer_move =="rock"
      @result = "win"
    end

    if @computer_move =="scissors"
      @result = "lose"
    end

    render("lion.html.erb")
  end

  def scissors

    @computer_move = ["rock","paper","scissors"].sample

    if @computer_move =="rock"
      @result = "lose"
    end

    if @computer_move =="paper"
      @result = "win"
    end

    if @computer_move =="scissors"
      @result = "tied"
    end

    render("elephant.html.erb")
  end

end
