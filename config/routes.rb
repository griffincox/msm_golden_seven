Rails.application.routes.draw do
  # Root
  get("/", { :controller => "pages", :action => "home" })
  # CRUD for movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie" })
  get("/movies/new_form", { :controller => "movies", :action => "new_form" })
  get("/movies/create_row", { :controller => "movies", :action => "create_row" })
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_form" })
  get("/movies/:id/update_row", { :controller => "movies", :action => "update_row" })
  get("/movies/:id", { :controller => "movies", :action => "show_movie" })
  # CRUD for directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/delete_director/:id", { :controller => "directors", :action => "delete_director" })
  get("/directors/new_form", { :controller => "directors", :action => "new_form" })
  get("/directors/create_row", { :controller => "directors", :action => "create_row" })
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form" })
  get("/directors/:id/update_row", { :controller => "directors", :action => "update_row" })
  get("/directors/:id", { :controller => "directors", :action => "show_director" })
  # CRUD for actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/delete_actor/:id", { :controller => "actors", :action => "delete_actor" })
  get("/actors/new_form", { :controller => "actors", :action => "new_form" })
  get("/actors/create_row", { :controller => "actors", :action => "create_row" })
  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_form" })
  get("/actors/:id/update_row", { :controller => "actors", :action => "update_row" })
  get("/actors/:id", { :controller => "actors", :action => "show_actor" })
end
