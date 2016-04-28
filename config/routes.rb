Rails.application.routes.draw do
  get("/",{:controller=>'game',:action=>'rock'})

  get("/play/rock",{:controller=>'game',:action=>'rock'})

  get("/play/paper",{:controller=>'game',:action=>'paper'})

  get("/play/scissors",{:controller=>'game',:action=>'scissors'})
end
