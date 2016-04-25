class GameController < ApplicationController


  def scissors
    @user_move = "scissors"
    @cpu_move=["rock", "paper", "scissors"].sample
    if @user_move == @cpu_move
      @result = "TIED"
    elsif @cpu_move == "paper"
      @result = "YOU WON!"
    else
      @result = "YOU LOST"
    render("paper.html.erb")

    render("scissors.html.erb")
    end
  end

  def paper
    @user_move = "paper"
    @cpu_move=["rock", "paper", "scissors"].sample
    if @user_move == @cpu_move
      @result = "TIED"
    elsif @cpu_move == "rock"
      @result = "YOU WON!"
    else
      @result = "YOU LOST"
    render("paper.html.erb")
    end
  end

  def rock
    @user_move = "rock"
    @cpu_move=["rock", "paper", "scissors"].sample
    @cpu_image="http://localhost:3000/assets/images/" + @cpu_move + ".png"

    if @user_move == @cpu_move
      @result = "TIED"
    elsif @cpu_move == "scissors"
      @result = "YOU WON!"
    else
      @result = "YOU LOST"
    end

    if @result == "YOU WON!"
      @user_render == "panel-success"
      @cpu_render =="danger"
    elsif @result == "YOU LOST"
      @user_render =="danger"
      @cpu_render =="success"
    else
      @user_render == "success"
      @cpu_render =="success"
    render("rock.html.erb")
  end


  end

end
