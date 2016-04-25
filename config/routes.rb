Rails.application.routes.draw do
  get("/play/rock",{:controller=> "game", :action=> "rock"})
  get("/play/scissors",{:controller=> "game", :action=> "scissors"})
  get("/play/paper",{:controller=> "game", :action=> "paper"})#looks in folder app controller. look for file game controller. look for action rock in game file controller

end
