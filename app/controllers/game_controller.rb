class GameController < ApplicationController

  def rock
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @result = "tied!".to_s
      @computer_image = "assets/images/rock.png".to_s
      @result_label = "label-warning".to_s
    elsif @computer_move == "Paper"
      @result = "lost!".to_s
      @computer_image = "assets/images/paper.png".to_s
      @result_label = "label-danger".to_s
    elsif @computer_move == "Scissors"
      @result = "won!".to_s
      @computer_image = "assets/images/scissors.png".to_s
      @result_label = "label-success".to_s
    end

    render("rock.html.erb")
  end

  def paper
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Paper"
      @result = "tied!".to_s
      @computer_image = "assets/images/paper.png".to_s
      @result_label = "label-warning".to_s
    elsif @computer_move == "Scissors"
      @result = "lost!".to_s
      @computer_image = "assets/images/scissors.png".to_s
      @result_label = "label-danger".to_s
    elsif @computer_move == "Rock"
      @result = "won!".to_s
      @computer_image = "assets/images/rock.png".to_s
      @result_label = "label-success".to_s
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @result = "tied!".to_s
      @computer_image = "assets/images/scissors.png".to_s
      @result_label = "label-warning".to_s
    elsif @computer_move == "Rock"
      @result = "lost!".to_s
      @computer_image = "assets/images/rock.png".to_s
      @result_label = "label-danger".to_s
    elsif @computer_move == "Paper"
      @result = "won!".to_s
      @computer_image = "assets/images/paper.png".to_s
      @result_label = "label-success".to_s
    end

    render("scissors.html.erb")
  end

end
