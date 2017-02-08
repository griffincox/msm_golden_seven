class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def delete_movie
    @movie = Movie.find(params[:id])
    @movie.destroy
    @list_of_movies = Movie.all
    redirect_to("/movies")
  end

  def new_form
    @new_movie = Movie.new
    render("new_form.html.erb")
  end

  def create_row
    @new_movie = Movie.new
    @new_movie.title = params[:title]
    @new_movie.year = params[:year]
    @new_movie.duration = params[:duration]
    @new_movie.description = params[:description]
    @new_movie.image_url = params[:image_url]
    if @new_movie.save
      redirect_to("/movies/#{@new_movie.id}")
    else
      render("new_form.html.erb")
    end
  end

  def edit_form
    @movie = Movie.find(params[:id])
    render("edit_form.html.erb")
  end

  def update_row
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    if @movie.save
      redirect_to("/movies/#{@movie.id}")
    else
      render("edit_form.html.erb")
    end
  end

  def show_movie
    @movie = Movie.find(params[:id])

  end
end
