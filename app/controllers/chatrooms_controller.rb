class ChatroomsController < ApplicationController
  def index
    @ideas = Idea.all
    if params[:query].present?
      sql_query = "category ILIKE :query OR subcategory ILIKE :query OR location ILIKE :query"
      @ideas = Idea.where(sql_query, query: "%#{params[:query]}%")
    else
      @chatroom = Chatroom.all
    end
  end

  def show
    @chatrooms = Chatroom.find(params[:chatroom_id])
    @idea = Idea.find(params[:id])
    @message = Message.new
  end
end
