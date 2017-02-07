Rails.application.routes.draw do
  # Root
  get("/", { :controller => "movies", :action => "index" })
  # CRUD for directors
  get("/movies", { :controller => "movies", :action => "index" })
  get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie" })
  get("/movies/new_form", { :controller => "movies", :action => "new_form" })
  get("/movies/create_row", { :controller => "movies", :action => "create_row" })
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_form" })
  get("/movies/:id/update_row", { :controller => "movies", :action => "update_row" })
  get("/movies/:id", { :controller => "movies", :action => "show_movie" })
end
