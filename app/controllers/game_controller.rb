class GameController < ApplicationController
  def rock
    @computer_move= ["rock", "paper", "scissors"].sample
    if @computer_move=="rock"
      @result="You tied"
    elsif @computer_move=="paper"
      @result="You lose"
    else @result="You win"
end
    render("rock.html.erb")
end

def paper

  @computer_move= ["rock", "paper", "scissors"].sample

  if @computer_move=="rock"
    @result="You win"
  elsif @computer_move=="paper"
    @result="You tied"
  else @result="You lose"
  end
  render("paper.html.erb")
end

def scissors
  @computer_move= ["rock", "paper", "scissors"].sample
  if @computer_move=="rock"
    @result="You lose"
  elsif @computer_move=="paper"
    @result="You win"
  else @result="You tied"
  end
  render("scissors.html.erb")
end

def result_image
  @computer_move= ["rock", "paper", "scissors"].sample
  if @computer_move=="Rock"
    @result="You lose"
  elsif @computer_move=="Paper"
    @result="You win"
  else @result="You tied"
  end
  render("scissors.html.erb")
end
end
