class FavouritesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @co2_weighted = 6
    @favourites = Favourite.all
    sum = 0
    @favourites.each do |favourite|
      sum += favourite.idea.impact
    end
    @new_results_takeoff = @co2_weighted * sum
    @new_results = @co2_weighted - @new_results_takeoff
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
