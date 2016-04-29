class GameController < ApplicationController
  
  def rock
    render "rockgesture.html.erb"
  end
  
  def paper
    render "papergesture.html.erb"
  end
  
  def scissors
    render "scissorsgesture.html.erb"
  end
  
end 