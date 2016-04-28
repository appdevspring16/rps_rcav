class GameController < ApplicationController

  def homepage
    render("application.html.erb")
  end


  def user_plays_rock
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @result = "Tie"
      # @user_label = "panel-danger"
      @image = "/assets/images/rock.png"
      @banner = "label-warning"
    elsif @computer_move == "Paper"
      @result = "Lose"
      # @user_label = "panel-danger"
      @image = "/assets/images/paper.png"
      @banner = "label-danger"
    else
      @result = "Win"
      # @user_label = "panel-success"
      @image = "/assets/images/scissors.png"
      @banner = "label-success"
    end
    render("rock.html.erb")
  end


  def user_plays_paper
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Paper"
      @result = "Tie"
      # @user_label = "panel-danger"
      @image = "/assets/images/paper.png"
      @banner = "label-warning"
    elsif @computer_move == "Scissors"
      @result = "Lose"
      # @user_label = "panel-danger"
      @image = "/assets/images/scissors.png"
      @banner = "label-danger"
    else
      @result = "Win"
      # @user_label = "panel-success"
      @image = "/assets/images/rock.png"
      @banner = "label-success"
    end

    render("paper.html.erb")
  end

  def user_plays_scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @result = "Tie"
      # @user_label = "panel-danger"
      @image = "/assets/images/scissors.png"
      @banner = "label-warning"
    elsif @computer_move == "Paper"
      @result = "Win"
      # @user_label = "panel-success"
      @image = "/assets/images/paper.png"
      @banner = "label-success"
    else
      @result = "Lose"
      # @user_label = "panel-success"
      @image = "/assets/images/rock.png"
      @banner = "label-danger"
    end
    render("scissors.html.erb")
  end
end
