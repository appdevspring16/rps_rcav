class GameController < ApplicationController
  def rock
    @rock= "http://localhost:3000/rock"
    render("rock.html.erb")
  end
  def scissors

    render("scissors.html.erb")
  end
  def paper

    render("paper.html.erb")
  end

  # user_move = gets.chomp
  # computer_move = ["rock", "paper", "scissors"].sample

  # if user_move == computer_move
  # return "You tied!"
  # elsif user_move == "paper" && computer_move == "rock"
  # return "You win!"
  # elsif user_move == "paper" && computer_move == "scissors"
  # return "You lose!"
  # elsif user_move == "scissors" && computer_move == "rock"
  # return "You lose!"
  # elsif user_move == "scissors" && computer_move == "paper"
  # return "You win!"
  # elsif user_move == "rock" && computer_move == "paper"
  # return "You lose!"
  # elsif user_move == "rock" && computer_move == "scissors"
  # return "You win!"
  # end
end
