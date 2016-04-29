class GameController < ApplicationController

	def rock

	@computer_move = ["rock", "paper", "scissors"].sample
	@user_move = "rock"
	if @computer_move == "paper"
	@result = "lost"	
	end
	if	
	@computer_move == "scissors"
		@result = "won"
	end
	if 
	@computer_move == "rock"
	@result = "tied"
	end

		render("rock.html.erb")
end


	def paper

		@computer_move = ["rock", "paper", "scissors"].sample
		@user_move = "paper"
		if @computer_move== "rock"
		@result = "won"
		end
		if 
		@computer_move == "scissors"
		@result = "lost"
		end
		if 
		@computer_move == "paper"
		@result = "tied"
		end

		render("paper.html.erb")
end


	def scissors

		@computer_move = ["rock", "paper", "scissors"].sample
		@user_move = "scissors"
		if @computer_move == "rock"
		@result = "lost"
		end
		if 
		@computer_move == "scissors"
		@result = "tied"
		end
		if 
		@computer_move == "paper"
		@result = "won"
		end
		render("scissors.html.erb")
end
end