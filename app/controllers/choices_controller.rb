class ChoicesController < ApplicationController
  def play_rock

    @user_move = "rock"
    @user_image = "assets/images/rock.png"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      @result = "You tied"
      @computer_image =  "assets/images/rock.png"

    elsif @computer_move == "scissors"
        @result = "You win"
        @computer_image =  "assets/images/scissors.png"

    elsif @computer_move == "paper"
        @result =  "You lose"
         @computer_image = "assets/images/paper.png"
    end

    render("rock.html.erb")

  end

  def play_paper

    @user_move = "paper"
    @user_image = "assets/images/paper.png"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "paper"
      @result = "You tied"
      @computer_image =  "assets/images/paper.png"

    elsif @computer_move == "scissors"
        @result = "You lose"
        @computer_image =  "assets/images/scissors.png"

    elsif @computer_move == "rock"
        @result =  "You win"
         @computer_image = "assets/images/rock.png"
    end

    render("paper.html.erb")

  end

  def play_scissors

    @user_move = "scissors"
    @user_image = "assets/images/scissors.png"

    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "scissors"
      @result = "You tied"
      @computer_image =  "assets/images/scissors.png"

    elsif @computer_move == "rock"
        @result = "You lose"
        @computer_image =  "assets/images/rock.png"

    elsif @computer_move == "paper"
        @result =  "You win"
        @computer_image = "assets/images/scissors.png"
    end

    render("scissors.html.erb")

  end

end
