class GameController < ApplicationController
  def rock
    @computer_move= ["rock", "paper", "scissors"].sample

    if @computer_move== "rock"
      @result = "tied"

    if @computer_move== "paper"
      @result = "lost"

    if @computer_move== "scissors"
      @result = "won"
    end

    render("play_rock.html.erb")
  end
end

class GameController < ApplicationController
  def paper
    @computer_move=["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result= "won"

    if computer_move == "paper"
      @result = "tied"
  
    if computer_move == "scissors"
      @result = "lost"
    end

    render("play_paper.html.erb")
  end
end

class GameController < ApplicationController
  def scissors
    @computer_move=["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result= "lost"

    if computer_move == "paper"
      @result = "won"

    if computer_move == "scissors"
      @result = "tied"
    end

    render("play_scissors.html.erb")
  end
end
