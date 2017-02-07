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

  end

  def create_row

  end

  def edit_form

  end

  def update_row

  end

  def show_movie
    @movie = Movie.find(params[:id])

  end
end
