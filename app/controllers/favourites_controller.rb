class FavouritesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]


  def index
    @favourites = Favourite.all
  end

  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.idea = Idea.find(params[:idea_id])
    if @favourite.save!
      respond_to do |format|
        format.html { redirect_to favourites_path}
        format.text { render partial: "favourites/ajax_response", formats: [:html]}
      end
    else
      respond_to do |format|
        format.html { redirect_to favourites_path}
        format.text { render partial: "favourites/ajax_response", formats: [:html]}
      end
    end

  end

end
