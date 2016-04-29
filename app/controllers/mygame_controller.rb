class MygameController < ApplicationController

  @computer_move = ['rock','paper','scissors'].sample
  
  def rock
    if @computer_move == "rock"
      @result = "tie"
     
    elsif @computer_move == "paper"
      @result = "lose"
      
    elsif @computer_move == "scissors"
      @result = "win"
    end
    
    render("rockgesture.html.erb")
  end

  
  def paper
    if @computer_move == "rock"
      @result = "win"
     
    elsif @computer_move == "paper"
      @result = "tie"
      
    elsif @computer_move == "scissors"
      @result = "lose"
    end
    render("papergesture.html.erb")
  end

  
  def scissors
    
    if @computer_move == "rock"
      @result = "lose"
     
    elsif @computer_move == "paper"
      @result = "win"
      
    elsif @computer_move == "scissors"
      @result = "tie"
    end
    render("scissorsgesture.html.erb")
  end

end