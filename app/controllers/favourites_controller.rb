class FavouritesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @co2_weighted_user = current_user.survey_result
    @favourites = Favourite.all
    sum = 0
    @favourites.each do |favourite|
      sum += favourite.idea.impact.to_f
    end
    @new_results_takeoff = @co2_weighted_user * sum
    @new_results = @co2_weighted_user - @new_results_takeoff
  end

  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.idea = Idea.find(params[:idea_id].to_i)
    if @favourite.save!
      # respond_to do |format|
      #   format.html { redirect_to favourites_path}
      #   format.text { render partial: "favourites/ajax_response", formats: [:html]}
      # end
      redirect_to favourites_path
    else
      respond_to do |format|
        format.html { redirect_to favourites_path}
        format.text { render partial: "favourites/ajax_response", formats: [:html]}
      end
    end
  end
end
