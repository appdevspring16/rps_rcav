class GameController < ApplicationController
  def rock
    @computer_move = ["rock","scissors","paper"].sample
    @computer_move_format = @computer_move.capitalize
    if @computer_move == "rock"
      @result = "tied"
      @computer_move_image = "/assets/images/rock.png"
      @span = "label-warning"
    elsif @computer_move == "paper"
      @result = "lose"
      @computer_move_image = "/assets/images/paper.png"
      @span = "label-danger"
    elsif @computer_move == "scissors"
      @result = "win"
      @computer_move_image = "/assets/images/scissors.png"
      @span = "label-success"
    end
    render("rock.html.erb")
  end

  def paper
    @computer_move = ["rock","scissors","paper"].sample
    @computer_move_format = @computer_move.capitalize
    if @computer_move == "paper"
      @result = "tied"
      @computer_move_image = "/assets/images/paper.png"
      @span = "label-warning"
    elsif @computer_move == "rock"
      @result = "win"
      @computer_move_image = "/assets/images/rock.png"
      @span = "label-success"
    elsif @computer_move == "scissors"
      @result = "lose"
      @computer_move_image = "/assets/images/scissors.png"
      @span = "label-danger"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["rock","scissors","paper"].sample
    @computer_move_format = @computer_move.capitalize
    if @computer_move == "scissors"
      @result = "tied"
      @computer_move_image = "/assets/images/scissors.png"
      @span = "label-warning"
    elsif @computer_move == "paper"
      @result = "win"
      @computer_move_image = "/assets/images/paper.png"
      @span = "label-success"
    elsif @computer_move == "rock"
      @result = "lose"
      @computer_move_image = "/assets/images/rock.png"
      @span = "label-danger"
    end
    render("scissors.html.erb")
  end

end
