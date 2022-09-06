class ChatroomsController < ApplicationController

  def show
    @chatroom = Chatroom.find(params[:id])
    @idea = @chatroom.idea
    @message = Message.new
  end
end
