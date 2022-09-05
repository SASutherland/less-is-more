class ChatroomsController < ApplicationController
  def index
    @ideas = Idea.all
    if params[:query].present?
      sql_query = "category ILIKE :query OR subcategory ILIKE :query OR location ILIKE :query"
      @ideas = Idea.where(sql_query, query: "%#{params[:query]}%")
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @idea = @chatroom.idea
    @message = Message.new
  end
end
