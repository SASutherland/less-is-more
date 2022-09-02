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
        infoWindow: render_to_string(partial: "info_window", locals: { idea: idea })
      }
    end

  end

  def show
    @idea = Idea.find(params[:id])
  end

end
