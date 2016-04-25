Rails.application.routes.draw do

# controller and action will always be the same keys that you have in ruby
# action does not have to match what was in the get ""
# whatever you call controller has to match the file name you create in the
# controller folder

  get("play/rock", { :controller =>"game", :action=>"rock"})

  get("play/paper", { :controller =>"game", :action=>"paper"})

  get("play/scissors", { :controller =>"game", :action=>"scissors"})

end
