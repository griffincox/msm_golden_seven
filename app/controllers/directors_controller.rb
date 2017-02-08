class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

  def delete_director
    @director = Director.find(params[:id])
    @director.destroy
    @list_of_directors = Director.all
    redirect_to("/directors")
  end

  def new_form
    @new_director = Director.new
    render("new_form.html.erb")
  end

  def create_row
    @new_director = Director.new
    @new_director.name = params[:name]
    @new_director.bio = params[:bio]
    @new_director.dob = params[:dob]
    @new_director.image_url = params[:image_url]
    if @new_director.save
      redirect_to("/directors/#{@new_director.id}")
    else
      render("new_form.html.erb")
    end
  end

  def edit_form
    @director = Director.find(params[:id])
    render("edit_form.html.erb")
  end

  def update_row
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    if @director.save
      redirect_to("/directors/#{@director.id}")
    else
      render("edit_form.html.erb")
    end
  end

  def show_director
    @director = Director.find(params[:id])

  end
end
