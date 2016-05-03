Rails.application.routes.draw do
  get("/play/:move", { :controller => "game", :action => "rps" })
  get("/",          { :controller => "game", :action => "rock" })
  get("/rock", { :controller => "game", :action => "rock" })
  get("/paper", { :controller => "game", :action => "paper" })
  get("/scissors", { :controller => "game", :action => "scissors" })
end
