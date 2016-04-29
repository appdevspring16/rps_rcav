class GameController < ApplicationController
  def user_plays_rock
@computer_move=["rock","paper","scissors"].sample

if @computer_move=="rock"
  @result="tied"
elsif @computer_move=="paper"
  @result="lost"
elsif @computer_move=="scissors"
  @result="won"
end

render("rock.html.erb")
  end




  def user_plays_paper
@computer_move=["rock","paper","scissors"].sample

if @computer_move=="paper"
  @result="tied"
elsif @computer_move=="scissors"
  @result="lost"
elsif @computer_move=="rock"
  @result="won"
end




render("paper.html.erb")
  end

  def user_plays_scissors
@computer_move=["rock","paper","scissors"].sample

if @computer_move=="scissors"
  @result="tied"
elsif @computer_move=="rock"
  @result="lost"
elsif @computer_move=="paper"
  @result="won"
end

render("scissors.html.erb")
  end



end
