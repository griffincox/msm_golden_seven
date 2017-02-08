class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def delete_actor
    @actor = Actor.find(params[:id])
    @actor.destroy
    @list_of_actors = Actor.all
    redirect_to("/actors")
  end

  def new_form
    @new_actor = Actor.new
    render("new_form.html.erb")
  end

  def create_row
    @new_actor = Actor.new
    @new_actor.name = params[:name]
    @new_actor.bio = params[:bio]
    @new_actor.dob = params[:dob]
    @new_actor.image_url = params[:image_url]
    if @new_actor.save
      redirect_to("/actors/#{@new_actor.id}")
    else
      render("new_form.html.erb")
    end
  end

  def edit_form
    @actor = Actor.find(params[:id])
    render("edit_form.html.erb")
  end

  def update_row
    @actor = Actor.find(params[:id])
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.dob = params[:dob]
    @actor.image_url = params[:image_url]
    if @actor.save
      redirect_to("/actors/#{@actor.id}")
    else
      render("edit_form.html.erb")
    end
  end

  def show_actor
    @actor = Actor.find(params[:id])

  end
end
