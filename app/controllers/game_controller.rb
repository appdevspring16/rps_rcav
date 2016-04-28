class GameController < ApplicationController
  def rock

    @computer_move=["rock","paper","scissors"].sample

    if @computer_move == "rock"
      @image = "/assets/images/rock.png"
      @result = "tied"
    elsif @computer_move == "paper"
      @image = "/assets/images/paper.png"
      @result = "lose"
    else @computer_move == "scissors"
      @image = "/assets/images/scissors.png"
      @result = "win"
    end
    render("rock.html.erb")
  end

  def paper

    @computer_move=["rock","paper","scissors"].sample

    if @computer_move == "paper"
      @image = "/assets/images/paper.png"
      @result="tied"
    elsif @computer_move == "rock"
      @image = "/assets/images/rock.png"
      @result = "win"
    else @computer_move == "scissors"
      @image = "/assets/images/scissors.png"
      @result = "lose"
    end
    render("paper.html.erb")
  end

  def scissors

    @computer_move=["rock","paper","scissors"].sample

    if @computer_move == "scissors"
      @image = "/assets/images/scissors.png"
      @result="tied"
    elsif @computer_move == "paper"
      @image = "/assets/images/paper.png"
      @result = "win"
    else @computer_move == "rock"
      @image = "/assets/images/rock.png"
      @result = "lose"
    end
    render("scissors.html.erb")
  end
end
