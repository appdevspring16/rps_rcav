class GameController < ApplicationController
  def user_plays_rock
@computer_move=["rock","paper","scissors"].sample

if @computer_move=="rock"
  @result="tie"
elsif @computer_move=="paper"
  @result="lose"
elsif @computer_move=="scissors"
  @result="win"
end

render("rock.html.erb")
  end




  def user_plays_paper
@computer_move=["rock","paper","scissors"].sample

if @computer_move=="paper"
  @result="tie"
elsif @computer_move=="scissors"
  @result="lose"
elsif @computer_move=="rock"
  @result="win"
end




render("paper.html.erb")
  end

  def user_plays_scissors
@computer_move=["rock","paper","scissors"].sample

if @computer_move=="scissors"
  @result="tie"
elsif @computer_move=="rock"
  @result="lose"
elsif @computer_move=="paper"
  @result="win"
end

render("scissors.html.erb")
  end



end
