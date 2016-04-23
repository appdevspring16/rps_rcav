class GameController < ApplicationController

  def find_result(user_choice)
    if user_choice == "rock" && @computer_move == "paper"
      @result = "You lose!"
      # Human rock / Computer scissors
    elsif user_choice == "rock" && @computer_move == "scissors"
      @result = "You win!"
      # Human paper / Computer rock
    elsif user_choice == "paper" && @computer_move == "rock"
      @result = "You win!"
      # Human paper / Computer scissors
    elsif user_choice == "paper" && @computer_move == "scissors"
      @result = "You lose!"
      # Human scissors / Computer rock
    elsif user_choice == "scissors" && @computer_move == "rock"
      @result = "You lose!"
      # Human scissors / Computer paper
    elsif user_choice == "scissors" && @computer_move == "paper"
      @result = "You win!"
    else
      @result = "It's a tie!"
    end
    return @result
  end

  #play rock page
  def playRock
    @computer_move = ["rock", "paper", "scissors"].sample
    find_result("rock")
    render("rock.html.erb")
  end

  #play paper page
  def playPaper
    @computer_move = ["rock", "paper", "scissors"].sample
    find_result("paper")
    render("paper.html.erb")
  end

  #play scissors page
  def playScissors
    @computer_move = ["rock", "paper", "scissors"].sample
    find_result("scissors")
    render("scissors.html.erb")
  end

end
