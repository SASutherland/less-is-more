require "csv"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def survey
    @refresh = false
    if params[:refresh].present?
      @refresh = true
    end
  end

  def about
  end

  def results
    @country = params[:country]
    @work = params[:work]
    @flight = params[:flight]
    @food = params[:food]
    @my_range = params[:myrange]
    @leisure = params[:leisure]

    # @table = CSV.parse(File.read("db/data/co2_country.csv"), headers: true)

    filepath = "./db/data/co2_country.csv"

    CSV.foreach(filepath, headers: :first_row) do |row|
        @countryCo2 = row[0]

      if @countryCo2 == @country
        @co2 = row[2]
      end
    end
    @co2= @co2.to_f.round(2)

    @transport = @co2 * 0.31
    @food	= @co2 * 0.28
    @house = @co2 * 0.22
    @leisure = @co2 * 0.19

    @transport.to_f.round(2)
    @food.to_f.round(2)
    @house.to_f.round(2)
    @leisure.to_f.round(2)
end
end
