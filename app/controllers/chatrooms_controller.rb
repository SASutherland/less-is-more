class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    if params[:query].present?
      sql_query = "category ILIKE :query OR subcategory ILIKE :query OR location ILIKE :query"
      @ideas = Idea.where(sql_query, query: "%#{params[:query]}%")
    else
      @chatroom = Chatroom.all
    end
  end
end
