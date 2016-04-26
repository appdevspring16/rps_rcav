class GameController < ApplicationController
  def rock

    @computer_move = ["rock","paper","scissors"].sample
    @computer_path = "/assets/images/" + @computer_move + ".png"
    @user_move = "rock"
    @user_path = "/assets/images/rock.png"

    if @user_move==@computer_move
      @result = "tied"

    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "lost"

    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "won"
    end

    @computer_move = @computer_move.capitalize
    @user_move = @user_move.capitalize
    render("rock.html.erb")
  end

  def scissors

    @computer_move = ["rock","paper","scissors"].sample
    @computer_path = "/assets/images/" + @computer_move + ".png"
    @user_move = "scissors"
    @user_path = "/assets/images/scissors.png"

    if @user_move==@computer_move
      @result = "tied"

    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "lost"

    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "won"
    end

    @computer_move = @computer_move.capitalize
    @user_move = @user_move.capitalize
    render("scissors.html.erb")
  end

  def paper

    @computer_move = ["rock","paper","scissors"].sample
    @computer_path = "/assets/images/" + @computer_move + ".png"
    @user_move = "paper"
    @user_path = "/assets/images/paper.png"

    if @user_move==@computer_move
      @result = "tied"

    elsif @user_move=="rock" && @computer_move=="paper"
      @result = "lost"

    elsif @user_move=="rock" && @computer_move=="scissors"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="rock"
      @result = "won"

    elsif @user_move=="paper" && @computer_move=="scissors"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="rock"
      @result = "lost"

    elsif @user_move=="scissors" && @computer_move=="paper"
      @result = "won"
    end

    @computer_move = @computer_move.capitalize
    @user_move = @user_move.capitalize
    render("paper.html.erb")
  end
end
