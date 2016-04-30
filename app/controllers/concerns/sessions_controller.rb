class SessionsController < ApplicationController
  def rock
    @user_move = "Rock"
    @computer_move = ['Paper','Rock','Scissors'].sample

    if @computer_move == "Rock"
      @result = "Draw"
    elsif @computer_move == "Paper"
      @result = "Lose"
    else
      @result = "Win"
    end
    render("rock.html.erb")

  end

  def paper
    @user_move = "Paper"
    @computer_move = ['Paper','Rock','Scissors'].sample

    if @computer_move == "Rock"
      @result = "Win"
    elsif @computer_move == "Paper"
      @result = "Draw"
    else
      @result = "Lose"
    end

    render("paper.html.erb")
  end

  def scissors
    @user_move = "Scissors"
    @computer_move = ['Paper','Rock','Scissors'].sample

    if @computer_move == "Rock"
      @result = "Lose"
    elsif @computer_move == "Paper"
      @result = "Win"
    else
      @result = "Draw"
    end

    render("scissors.html.erb")
  end

end
