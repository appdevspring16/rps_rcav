Rails.application.routes.draw do

# default page
get("/", { :controller => "game", :action => "user_plays_rock"})

get("/rock", { :controller => "game", :action => "user_plays_rock"})
get("/paper", { :controller => "game", :action => "user_plays_paper"})
get("/scissors", { :controller => "game", :action => "user_plays_scissors"})

end
