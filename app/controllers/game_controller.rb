class GameController < ApplicationController
  def rock
    @rock= "http://localhost:3000/rock"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    render("rock.html.erb")
  end
  def scissors
    @scissors= "http://localhost:3000/scissors"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    render("scissors.html.erb")
  end
  def paper
    @paper= "http://localhost:3000/paper"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    render("paper.html.erb")
  end
  def default
    @default= "http://localhost:3000"
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    render("rock.html.erb")
  end

end
