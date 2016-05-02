class GameController < ApplicationController
	def rock
		@computer_move= ["rock", "paper", "scissors"].sample

		if @computer_move == "rock"
			@result = "It's a tie!"
		elsif @computer_move == "paper"
			@result = "You lose!"
		elsif @computer_move == "scissors"
			@result = "You win!"
		end
	
		render("zebra.html.erb")
	end

	def paper
			@computer_move= ["rock", "paper", "scissors"].sample

		if @computer_move == "rock"
			@result = "You win!"
		elsif @computer_move == "paper"
			@result = "It's a tie!"
		elsif @computer_move == "scissors"
			@result = "You lose!"
		end	

		render("paper.html.erb")
	end

		def scissor
			@computer_move= ["rock", "paper", "scissors"].sample

		if @computer_move == "rock"
			@result = "You lose!"
		elsif @computer_move == "paper"
			@result = "You win!"
		elsif @computer_move == "scissors"
			@result = "It's a tie!"
		end	

		render("scissor.html.erb")
	end

end