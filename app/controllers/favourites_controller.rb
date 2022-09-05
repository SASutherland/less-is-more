class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.all
  end

  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.idea = Idea.find(params[:idea_id])
    if @favourite.save!
      redirect_to favourites_path
    else
      flash[:alert] = "Idea already in list!"
    end
  end

end
