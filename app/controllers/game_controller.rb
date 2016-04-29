class GameController < ApplicationController

  def user_plays_rock
    @computer_move=["rock","paper","scissors"].sample

if @computer_move=="rock"
  @result="Tie"
elsif @computer_move=="paper"
  @result="Lose"
else
  @result="Win"
end
    render("rock.html.erb")
  end


  def user_plays_paper
    @computer_move=["rock","paper","scissors"].sample

if @computer_move=="rock"
  @result="Win"
elsif @computer_move=="paper"
  @result="Tie"
else
  @result="Lose"
end
    render("paper.html.erb")
  end

  def user_plays_scissors
    @computer_move=["rock","paper","scissors"].sample

  if @computer_move=="rock"
  @result="Lose"
  elsif @computer_move=="paper"
  @result="Win"
  else
  @result="Tie"
  end
    render("scissors.html.erb")
  end


end
