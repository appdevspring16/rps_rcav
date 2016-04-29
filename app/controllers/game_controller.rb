class GameController < ApplicationController
  def rock
    @computer_move=["Rock","Paper","Scissors"].sample
    if @computer_move=="Rock"
      @result="You tied!"
      @img="/assets/images/rock.png"
    elsif @computer_move=="Paper"
      @result="You lose!"
      @img="/assets/images/paper.png"
    elsif @computer_move=="Scissors"
      @result= "You win!"
      @img="/assets/images/scissors.png"
    end
    render("rock.html.erb")
  end

  def paper
    @computer_move=["Rock","Paper","Scissors"].sample
    if @computer_move=="Rock"
      @result="You win!"
      @img="/assets/images/rock.png"
    elsif @computer_move=="Paper"
      @result="You tied!"
      @img="/assets/images/paper.png"
    elsif @computer_move=="Scissors"
      @result= "You lose!"
      @img="/assets/images/scissors.png"
    end
    render("paper.html.erb")
  end

  def scissors
    @computer_move=["Rock","Paper","Scissors"].sample
    if @computer_move=="Rock"
      @result="You lose!"
      @img="/assets/images/rock.png"
      elsif @computer_move=="Paper"
      @result="You win!"
      @img="/assets/images/paper.png"
    elsif @computer_move=="Scissors"
      @result= "You tied!"
      @img="/assets/images/scissors.png"
    end
    render("scissors.html.erb")
  end

end
