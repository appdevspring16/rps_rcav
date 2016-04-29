class GameController < ApplicationController

  def rock
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock".to_s
      @result = "tied".to_s
      @result_label = "label-warning".to_s
      render("rock.html.erb")
      # @computer_image = "/assets/images/rock.png"
    elsif @computer_move == "Paper".to_s
      @result = "lose".to_s
      @result_label = "label-danger".to_s
      render("paper.html.erb")
    elsif @computer_move == "Scissors".to_s
      @result = "win".to_s
      @result_label = "label-success".to_s
      render("scissors.html.erb")
    end
  end

  def paper
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock".to_s
      @result = "win".to_s
      @result_label = "label-success".to_s
      render("rock.html.erb")
    elsif @computer_move == "Paper".to_s
      @result = "tie".to_s
      @result_label = "label-warning".to_s
    render("paper.html.erb")
  elsif @computer_move == "Scissors".to_s
      @result = "lose".to_s
      @result_label = "label-danger".to_s
    render("scissors.html.erb")
    end
  end

  def scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock".to_s
      @result = "lose".to_s
      @result_label = "label-danger".to_s
      render("rock.html.erb")
    elsif @computer_move == "Paper".to_s
      @result = "win".to_s
      @result_label = "label-success".to_s
      render("paper.html.erb")
    elsif @computer_move == "Scissors".to_s
      @result = "tie".to_s
      @result_label = "label-warning".to_s
    render("scissors.html.erb")
    end
  end

end
