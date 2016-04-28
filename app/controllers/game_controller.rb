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

    render("rock.html.erb")
  end

  def user_plays_paper
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move== "paper"
      @result = 'Tie'
    elsif @computer_move=="scissors"
      @result="Lose"
    else
      @result = "win"
    end

    render("paper.html.erb")
  end

  def user_plays_scissors
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move== "scissors"
      @result = 'Tie'
    elsif @computer_move=="rock"
      @result="Lose"
    else
      @result = "win"
    end

    render("scissors.html.erb")
  end


end
