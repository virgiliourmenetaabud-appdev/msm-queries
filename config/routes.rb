Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:dir_id", { :controller => "directors", :action => "director_details" })

  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:actor_id", { :controller => "actors", :action => "actor_details"})

  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:movie_id", { :controller => "movies", :action => "movie_details"})

  get("/characters", { :controller => "characters", :action => "index"})

end
