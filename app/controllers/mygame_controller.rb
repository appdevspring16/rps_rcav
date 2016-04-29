class MygameController < ApplicationController



  def rock
    @computer_move = ['rock','paper','scissors'].sample
    if @computer_move == "rock"
      @result = "tie"
      @image = "rock"
      @color = "warning"

    elsif @computer_move == "paper"
      @result = "lose"
      @image = "paper"
      @color = "danger"

    elsif @computer_move == "scissors"
      @result = "win"
      @image = "scissors"
      @color = "success"
    end

    render("rockgesture.html.erb")
  end


  def paper
     @computer_move = ['rock','paper','scissors'].sample
    if @computer_move == "rock"
      @result = "win"
      @image = "rock"
      @color = "success"

    elsif @computer_move == "paper"
      @result = "tie"
      @image = "paper"
      @color = "warning"

    elsif @computer_move == "scissors"
      @result = "lose"
      @image = "scissors"
      @color = "danger"
    end
    render("papergesture.html.erb")
  end


  def scissors
@computer_move = ['rock','paper','scissors'].sample
    if @computer_move == "rock"
      @result = "lose"
      @image = "rock"
      @color = "danger"

    elsif @computer_move == "paper"
      @result = "win"
      @image = "paper"
      @color = "success"

    elsif @computer_move == "scissors"
      @result = "tie"
      @image = "scissors"
      @color = "warning"
    end
    render("scissorsgesture.html.erb")
  end

end