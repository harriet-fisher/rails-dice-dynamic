Rails.application.routes.draw do
  get("/", {:controller => "game", :action => "home"})
  get("/dice/:number_dice/:dice_faces", {:controller => "game", :action => "roll"})
end
