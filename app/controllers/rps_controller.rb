class RpsController < ApplicationController
  def rock
    def comp_move moves
      return moves.sample
    end
    def outcome comp,user_move
      if comp == user_move
        return "It's a tie!"
      elsif comp == "rock" && user_move == "paper"
        return "You Win"
      elsif comp == "paper" && user_move == "scissors"
        return "You Win"
      elsif comp == "scissors" && user_move == "rock"
        return "You Win"
      else
        return "You Lose"
      end
    end
    def playing moves
      puts "Your move: rock, paper, or scissors?"
      user_move = "rock"
      comp = comp_move(moves)
      result = outcome(comp,user_move)
      @user_move = user_move
      @computer_move = comp
      @result = result
    end
    moves = ["rock","paper","scissors"]
    playing(moves)
    render("result.html.erb")
  end
  def paper
    def comp_move moves
      return moves.sample
    end
    def outcome comp,user_move
      if comp == user_move
        return "It's a tie!"
      elsif comp == "rock" && user_move == "paper"
        return "You Win"
      elsif comp == "paper" && user_move == "scissors"
        return "You Win"
      elsif comp == "scissors" && user_move == "rock"
        return "You Win"
      else
        return "You Lose"
      end
    end
    def playing moves
      puts "Your move: rock, paper, or scissors?"
      user_move = "paper"
      comp = comp_move(moves)
      result = outcome(comp,user_move)
      @user_move = user_move
      @computer_move = comp
      @result = result
    end
    moves = ["rock","paper","scissors"]
    playing(moves)
    render("result.html.erb")
  end
  def scissors
    def comp_move moves
      return moves.sample
    end
    def outcome comp,user_move
      if comp == user_move
        return "It's a tie!"
      elsif comp == "rock" && user_move == "paper"
        return "You Win"
      elsif comp == "paper" && user_move == "scissors"
        return "You Win"
      elsif comp == "scissors" && user_move == "rock"
        return "You Win"
      else
        return "You Lose"
      end
    end
    def playing moves
      puts "Your move: rock, paper, or scissors?"
      user_move = "scissors"
      comp = comp_move(moves)
      result = outcome(comp,user_move)
      @user_move = user_move
      @computer_move = comp
      @result = result
    end
    moves = ["rock","paper","scissors"]
    playing(moves)
    render("result.html.erb")
  end
end
