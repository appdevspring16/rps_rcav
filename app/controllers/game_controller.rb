class GameController < ApplicationController
  def rock
    @computer_move= ["rock", "paper", "scissors"].sample

    if @computer_move== "rock"
      @result = "tied"
    end

    if @computer_move== "paper"
      @result = "lost"
    end

    if @computer_move== "scissors"
      @result = "won"
    end

    render("zebra.html.erb")
  end
end

class GameController < ApplicationController
  def paper

    render("zebra.html.erb")
  end
end

class GameController < ApplicationController
  def scissors

    render("zebra.html.erb")
  end
end
