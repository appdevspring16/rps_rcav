class GameController < ApplicationController

  def welcome
    render("welcome.html.erb")
  end

# can add all our code that we did in here for RPS... make a nice website... then copy them for scissors and paper
  def rock
  @computer_move = ["rock", "paper", "scissors"].sample.downcase
  @user_move = "rock"
  @user_picture = "/assets/images/#{@user_move.downcase}.png"

    if @user_move == @computer_move
    @result = "tie"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-warning"
    elsif @user_move == "rock" && @computer_move == "paper"
    @result = "lose"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-danger"
    else @user_move == "rock" && @computer_move == "scissors"
    @result = "win"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-success"
    end

    render("rock.html.erb")

  end

  def paper
  @computer_move = ["rock", "paper", "scissors"].sample.downcase
  @user_move = "paper"
  @user_picture = "/assets/images/#{@user_move.downcase}.png"

    if @user_move == @computer_move
    @result = "tie"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-warning"
    elsif @user_move == "paper" && @computer_move == "scissors"
    @result = "lose"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-danger"
    else @user_move == "paper" && @computer_move == "rock"
    @result = "win"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-success"
    end

    render("rock.html.erb")

  end

  def scissors
  @computer_move = ["rock", "paper", "scissors"].sample.downcase
  @user_move = "scissors"
  @user_picture = "/assets/images/#{@user_move.downcase}.png"

    if @user_move == @computer_move
    @result = "tie"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-warning"
    elsif @user_move == "scissors" && @computer_move == "rock"
    @result = "lose"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-danger"
    else @user_move == "scissors" && @computer_move == "paper"
    @result = "win"
    @comp_picture = "/assets/images/#{@computer_move.downcase}.png"
    @label_color = "label-success"
    end

    render("rock.html.erb")

  end

end
