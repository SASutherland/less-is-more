class FavouritesController < ApplicationController
  skip_before_action :authenticate_user!
  
  def index
    @favourites = Favourite.all
  end
end
