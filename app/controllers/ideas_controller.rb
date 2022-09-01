class IdeasController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @ideas = Idea.all
    @markers = @ideas.geocoded.map do |idea|
      {
        lat: idea.latitude,
        lng: idea.longitude
      }
    end

  end

  def show
    @idea = Idea.find(params[:id])
  end

end
