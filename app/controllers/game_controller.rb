class GameController < ApplicationController

  def rock
    @computer_move=["Rock","Paper","Scissors"].sample

    if @computer_move == "Rock"
      @result = "tied!"
      @color = "label label-warning"
    elsif  @computer_move =="Paper"
      @result = "lost!"
      @color = "label label-danger"
    else
      @result = "won!"
      @color = "label label-success"

    end

    render('rock.html.erb')
  end

  def paper
    @computer_move=["Rock","Paper","Scissors"].sample

    if @computer_move == "Paper"
      @result = "tied!"
      @color = "label label-warning"
    elsif  @computer_move =="Scissors"
      @result = "lost!"
      @color = "label label-danger"
    else
      @result = "won!"
      @color = "label label-success"
    end

    render('paper.html.erb')
  end

  def scissors
    @computer_move=["Rock","Paper","Scissors"].sample

    if @computer_move == "Scissors"
      @result = "tied!"
      @color = "label label-warning"
    elsif  @computer_move =="Rock"
      @result = "lost!"
      @color = "label label-danger"
    else
      @result = "won!"
      @color = "label label-success"
    end

    render('scissors.html.erb')
  end


end
