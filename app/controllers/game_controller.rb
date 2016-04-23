class GameController <ApplicationController
  def user_plays_rock
    @computer_move = ["rock", "paper", "scissors"].sample

if @computer_move== "rock"
  @result = 'Tie'
elsif @computer_move=="paper"
  @result="Lose"
else
  @result = "win"
end

    render("zebra.html.erb")
  end
end
