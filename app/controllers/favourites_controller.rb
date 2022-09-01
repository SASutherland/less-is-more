class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end
end
