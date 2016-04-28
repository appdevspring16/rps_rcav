class GameController < ApplicationController
  def user_plays_rock
    @computer_move = ["Rock","Paper","Scissors"].sample

    if @computer_move == "Rock"
      @result = "You tied!"
      @label = "label label-warning"
      @comppic = "/assets/images/rock.png"
    elsif @computer_move == "Paper"
      @result = "You lost!"
      @label = "label label-danger"
      @comppic = "/assets/images/paper.png"
    else
      @result = "You won!"
      @label = "label label-success"
      @comppic = "/assets/images/scissors.png"
      # @label = '<span class="label label-success">'
      # @label = <span class="label label-success">
    end
    # render("zebra.html.erb")
    render("user_plays_rock.html.erb")
  end
  # end

  # Paper:
  def user_plays_paper
    @computer_move = ["Rock","Paper","Scissors"].sample

    if @computer_move == "Paper"
      @result = "You tied!"
      @label = "label label-warning"
      @comppic = "/assets/images/paper.png"
    elsif @computer_move == "Scissors"
      @result = "You lost!"
      @label = "label label-danger"
      @comppic = "/assets/images/scissors.png"
    else
      @result = "You won!"
      @label = "label label-success"
      @comppic = "/assets/images/rock.png"
      # @label = '<span class="label label-success">'
      # @label = <span class="label label-success">
    end
    # render("zebra.html.erb")
    render("user_plays_paper.html.erb")
  end

  # Scissors
  def user_plays_scissors
    @computer_move = ["Rock","Paper","Scissors"].sample

    if @computer_move == "Scissors"
      @result = "You tied!"
      @label = "label label-warning"
      @comppic = "/assets/images/scissors.png"
    elsif @computer_move == "Rock"
      @result = "You lost!"
      @label = "label label-danger"
      @comppic = "/assets/images/rock.png"
    else
      @result = "You won!"
      @label = "label label-success"
      @comppic = "/assets/images/paper.png"
      # @label = '<span class="label label-success">'
      # @label = <span class="label label-success">
    end
    # render("zebra.html.erb")
    render("user_plays_scissors.html.erb")
  end

end
