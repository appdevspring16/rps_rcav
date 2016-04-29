



class GameController < ApplicationController #this is where you need to capitalize, camel case. The name of the file should be snake case and the actual class must be camel case. We created a class GameController which will be responsible for all requests from URLs that we sent to this page.
  #inside this class is where we write ruby methods that will be triggered when visitors click on URLs

  def rps_rcav
    @user_move = params[:player_move]
    @computer_move = ["rock", "paper", "scissors"].sample  #this @ will make this variable an instance variable, which will live longer and we can carry it over to our zebra file

    if @user_move == @computer_move
          @result = "tied :)"
        elsif @user_move == "rock" && @computer_move == "paper"
          @result = "lose"
        elsif @user_move == "rock" && @computer_move == "scissors"
          @result = "win!"
        elsif @user_move == "paper" && @computer_move == "rock"
          @result = "win!"
        elsif @user_move == "paper" && @computer_move == "scissors"
          @result = "lose"
        elsif @user_move == "scissors" && @computer_move == "rock"
          @result  = "lose"
        elsif @user_move == "scissors" && @computer_move == "paper"
          @result = "win!"
        end

  render("zebra.html.erb") #use render function to create output -- when users click on the roky link, we want the computer to execute whatever method is stored in zebra.html.erb -- We then need to create the zebra.html.erb file and write some html in it

  #then we need to create a folder in views called game, the name should be the same as your controller name
  #remember that RUBY executes code from top to bottom, so render must be last
end #this ends def
end #this end closes class
