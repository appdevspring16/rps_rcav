class GameController < ApplicationController

  def rock
    # @user_move = params["http://localhost:3000/rock"]
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "tied"
      # @computer_image = "/assets/images/rock.png"
    elsif @computer_move == "paper"
      @result = "lose"
      render("paper.html.erb")
    elsif @computer_move == "scissors"
      @result = "win"
      render("rock.html.erb")
    end
  end

  def paper
    # @user_move = params["http://localhost:3000/paper"]
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "win"
    elsif @computer_move == "paper"
      @result = "tie"
    render("paper.html.erb")
    elsif @computer_move == "scissors"
      @result = "lose"
      render("paper.html.erb")
    end
  end

  def scissors
    # @user_move = params["http://localhost:3000/scissors"]
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "lose"
    elsif @computer_move == "paper"
      @result = "win"
    elsif @computer_move == "scissors"
      @result = "tie"
    render("scissors.html.erb")
    end
  end

end
