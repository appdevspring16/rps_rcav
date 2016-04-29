class GameController < ApplicationController
  def rock
    @user_move = "rock"
    rps = ["rock", "paper", "scissors"]
    @computer_move=rps.sample
@computer_picture="/assets/images/"+@computer_move+".png"
    if @computer_move == @user_move
      # puts "I also chose #{@user_move}. We tied!"
      @result = "tie"
      @label="warning"
    elsif @computer_move == "scissors"
      # puts "I chose "+computer_move+". You win!"
      @result = "win!"
      @label="success"
    elsif @computer_move == "paper"
      # puts "I chose "+computer_move+".I win!"
      @result = "lost!"
      @label="danger"
      render("rock.html.erb")
    end
  end
  def paper
    @user_move = "paper"
    rps = ["rock", "paper", "scissors"]
    @computer_move=rps.sample
    @computer_picture="/assets/images/"+@computer_move+".png"
    if @computer_move == @user_move
      # puts "I also chose #{@user_move}. We tied!"
      @result = "tie"
      @label="warning"
    elsif @computer_move == "scissors"
      # puts "I chose "+computer_move+". You win!"
      @result = "lost!"
      @label="danger"
    elsif @computer_move == "rock"
      # puts "I chose "+computer_move+".I win!"
      @result = "won!"
  @label="success"
      render("paper.html.erb")
    end
  end
  def scissors
    @user_move = "scissors"
    rps = ["rock", "paper", "scissors"]
    @computer_move=rps.sample
    @computer_picture="/assets/images/"+@computer_move+".png"
        if @computer_move == @user_move
      # puts "I also chose #{@user_move}. We tied!"
      @result = "tie"
      @label="warning"
    elsif @computer_move == "paper"
      # puts "I chose "+computer_move+". You win!"
      @result = "won!"
      @label="success"
    elsif @computer_move == "rock"
      # puts "I chose "+computer_move+".I win!"
      @result = "lost!"
        @label="danger"
      render("scissors.html.erb")
    end
  end
end
