class GameController < ApplicationController
  def rps

    @user_input = params[:the_move]

    @computer_input = ['rock', 'paper', 'scissors'].sample

    @result =

      if @user_input == @computer_input
        "tied"

      elsif @user_input == 'rock' && @computer_input == 'scissors'
        "win"

      elsif @user_input == 'rock' && @computer_input == 'paper'
        "lose"

      elsif @user_input == 'scissors' && @computer_input == 'paper'
        "win"

      elsif @user_input == 'scissors' && @computer_input == 'rock'
        "lose"

      elsif @user_input == 'paper' && @computer_input == 'rock'
        "win"

      elsif @user_input == 'paper' && @computer_input == 'scissors'
        "lose"

      end


    render("rps.html.erb")
  end
end
