class GameController < ApplicationController

  def rock
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock".to_s
      @result = "tied".to_s
      @result_label = "label-warning".to_s
      @result_image = "/assets/images/rock.png".to_s
    elsif @computer_move == "Paper".to_s
      @result = "lose".to_s
      @result_label = "label-danger".to_s
      @result_image = "/assets/images/paper.png".to_s
    elsif @computer_move == "Scissors".to_s
      @result = "win".to_s
      @result_label = "label-success".to_s
      @result_image = "/assets/images/scissors.png".to_s
    end
    render("rock.html.erb")
  end

  def paper
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock".to_s
      @result = "win".to_s
      @result_label = "label-success".to_s
      @result_image = "/assets/images/rock.png".to_s
    elsif @computer_move == "Paper".to_s
      @result = "tie".to_s
      @result_label = "label-warning".to_s
      @result_image = "/assets/images/paper.png".to_s
  elsif @computer_move == "Scissors".to_s
      @result = "lose".to_s
      @result_label = "label-danger".to_s
      @result_image = "/assets/images/scissors.png".to_s
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock".to_s
      @result = "lose".to_s
      @result_label = "label-danger".to_s
      @result_image = "/assets/images/rock.png".to_s
    elsif @computer_move == "Paper".to_s
      @result = "win".to_s
      @result_label = "label-success".to_s
      @result_image = "/assets/images/paper.png".to_s
    elsif @computer_move == "Scissors".to_s
      @result = "tie".to_s
      @result_label = "label-warning".to_s
      @result_image = "/assets/images/scissors.png".to_s
    end
    render("scissors.html.erb")
  end

end
