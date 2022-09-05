class IdeasController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @ideas = Idea.all
    @markers = @ideas.geocoded.map do |idea|
      {
        name: idea.title,
        content: idea.content,
        location: idea.location,
        lat: idea.latitude,
        lng: idea.longitude,
        idea_id: idea.id,
        infoWindow: render_to_string(partial: "info_window", locals: { idea: idea })
      }
    end
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.user = current_user
    @idea.save!
    redirect_to ideas_path
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :content, :location, :votes, :category, :subcategory, :impact, :photo, :user)  end
end
