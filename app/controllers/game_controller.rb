class GameController < ApplicationController
  def rock
    @computer_move = ["rock","scissors","paper"].sample
    @computer_move_format = @computer_move.capitalize
    @computer_move_image = @computer_move+'.png'
    if @computer_move == "rock"
      @result = "tied"
    elsif @computer_move == "paper"
      @result = "lose"
    elsif @computer_move == "scissors"
      @result = "win"
    end
    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock","scissors","paper"].sample
    @computer_move_format = @computer_move.capitalize
    if @computer_move == "paper"
      @result = "tied"
    elsif @computer_move == "rock"
      @result = "win"
    elsif @computer_move == "scissors"
      @result = "lose"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock","scissors","paper"].sample
    @computer_move_format = @computer_move.capitalize
    if @computer_move == "scissors"
      @result = "tied"
    elsif @computer_move == "paper"
      @result = "win"
    elsif @computer_move == "rock"
      @result = "lose"
    end
    render("scissors.html.erb")
  end

end
