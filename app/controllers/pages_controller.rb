class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def survey
  end

  def about
  end

  def results
    @country = params[:country]
    @work = params[:work]
    @flight = params[:flight]
    @food = params[:food]
    @myRange = params[:myRange]
    @leisure = params[:leisure]
  end
end
