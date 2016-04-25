class GameController < ApplicationController


  def scissors
    @user_move = "scissors"
    @cpu_move=["rock", "paper", "scissors"].sample
    @cpu_text=@cpu_move.capitalize
    @cpu_image="http://localhost:3000/assets/images/" + @cpu_move + ".png"

    if @user_move == @cpu_move
      @result = "TIED"
      @user_render = "success"
      @panel_render = "warning"
      @cpu_render ="danger"
    elsif @cpu_move == "paper"
      @result = "YOU WON!"
      @user_render = "success"
      @cpu_render ="danger"
      @panel_render = "success"
    else
      @result = "YOU LOST"
      @user_render ="danger"
      @cpu_render ="success"
      @panel_render = "danger"
    end
    render("scissors.html.erb")
  end

  def paper
    @user_move = "paper"
    @cpu_move=["rock", "paper", "scissors"].sample
    @cpu_text=@cpu_move.capitalize
    @cpu_image="http://localhost:3000/assets/images/" + @cpu_move + ".png"

    if @user_move == @cpu_move
      @result = "TIED"
      @user_render = "success"
      @panel_render = "warning"
      @cpu_render ="danger"
    elsif @cpu_move == "rock"
      @result = "YOU WON!"
      @user_render = "success"
      @panel_render = "success"
      @cpu_render ="danger"
    else
      @result = "YOU LOST"
      @user_render ="danger"
      @cpu_render ="success"
      @panel_render = "danger"
    end
    render("paper.html.erb")
  end

  def rock
    @user_move = "rock"
    @cpu_move=["rock", "paper", "scissors"].sample
    @cpu_text=@cpu_move.capitalize
    @cpu_image="http://localhost:3000/assets/images/" + @cpu_move + ".png"

    if @user_move == @cpu_move
      @result = "TIED"
      @user_render = "success"
      @panel_render = "warning"
      @cpu_render ="danger"
    elsif @cpu_move == "scissors"
      @result = "YOU WON!"
      @user_render = "success"
      @panel_render = "success"
      @cpu_render ="danger"
    else
      @result = "YOU LOST"
      @user_render ="danger"
      @cpu_render ="success"
      @panel_render = "danger"
    end


    render("rock.html.erb")
  end



end
