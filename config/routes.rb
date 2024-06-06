Rails.application.routes.draw do
 get("/rock", { :controller => "game", :action => "giraffe" })
 get("/paper", { :controller => "game", :action => "elephant" })
 get("/scissors", { :controller => "game", :action => "zebra" })
 get("/", { :controller => "game", :action => "lion" })
end
