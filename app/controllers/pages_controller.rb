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
    @house = params[:myrange]
    @leisure = params[:leisure]

    filepath = "./db/data/co2_country.csv"
    CSV.foreach(filepath, headers: :first_row) do |row|
        @countryCo2 = row[0]

      if @countryCo2 == @country
        @co2 = row[2]
        @transport_country = row[3]
        @food_country = row[4]
        @house_country = row[5]
        @leisure_country = row[6]
        @car = row[7]
        @electricalcar = row[8]
        @publictransport = row[9]
        @bike = row[10]
        @foot = row[11]
        @oneflight = row[12]
        @twoflights = row[13]
        @fourflights = row[14]
        @sixflights = row[15]
        @beef = row[16]
        @pork = row[17]
        @fish = row[18]
        @vegetables = row[19]
        @t16 = row[20]
        @t17 = row[21]
        @t18 = row[22]
        @t19 = row[23]
        @t20 = row[24]
        @t21 = row[25]
        @t22 = row[26]
        @t23 = row[27]
        @t24 = row[28]
        @t25 = row[29]
        @traveling = row[30]
        @chilling = row[31]
        @shopping = row[32]
        @sport = row[33]
        @hangingout = row[34]

      end
    end

    @co2 = @co2.to_f * 1000
    @transport_country = @transport_country.to_f * 1000
    @food_country = @food_country.to_f * 1000
    @house_country = @house_country.to_f * 1000
    @leisure_country = @leisure_country.to_f * 1000
    @car = @car.to_f * 1000
    @electricalcar = @electricalcar.to_f * 1000
    @publictransport = @publictransport.to_f * 1000
    @bike = @bike.to_f * 1000
    @foot = @foot.to_f * 1000
    @oneflight = @oneflight.to_f * 1000
    @twoflights =  @twoflights.to_f * 1000
    @fourflights = @fourflights.to_f * 1000
    @sixflights = @sixflights.to_f * 1000
    @beef = @beef.to_f * 1000
    @pork = @pork.to_f * 1000
    @fish = @fish.to_f * 1000
    @vegetables = @vegetables.to_f * 1000
    @t16 = @t16.to_f * 1000
    @t17 = @t17.to_f * 1000
    @t18 = @t18.to_f * 1000
    @t19 = @t19.to_f * 1000
    @t20 = @t20.to_f * 1000
    @t21 = @t21.to_f * 1000
    @t22 = @t22.to_f * 1000
    @t23 = @t23.to_f * 1000
    @t24 = @t24.to_f * 1000
    @t25 = @t25.to_f * 1000
    @traveling = @traveling.to_f * 1000
    @chilling = @chilling.to_f * 1000
    @shopping = @shopping.to_f * 1000
    @sport = @sport.to_f * 1000
    @hangingout = @hangingout.to_f * 1000

    if @work == "car"
      @work_user = @car
    elsif @work  == "electrical_car"
      @work_user= @electricalcar
    elsif @work  == "public_transport"
      @work_user =@publictransport
    elsif @work  == "bike"
      @work_user= @bike
    elsif @work  == "foot"
      @work_user =@foot
    end

    if @flight == "1flight"
      @flight_user = @oneflight
    elsif @flight == "2_3flights"
      @flight_user = @twoflights
    elsif @flight == "4_6flights"
      @flight_user = @fourflights
    elsif @flight == "more6flights"
      @flight_user = @sixflights
    end

    if @food == "beef"
      @food_user = @beef
    elsif @food == "pork_poultry"
      @food_user = @pork
    elsif @food == "fish"
      @food_user = @fish
    elsif @food == "vegetables"
      @food_user = @vegetables
    end

    if @house == "16"
      @house_user = @t16
    elsif @house == "17"
      @house_user = @t17
    elsif @house == "18"
      @house_user = @t18
    elsif @house == "19"
      @house_user = @t19
    elsif @house == "20"
      @house_user = @t20
    elsif @house == "21"
      @house_user = @t21
    elsif @house == "22"
      @house_user =  @t22
    elsif @house == "23"
      @house_user = @t23
    elsif @house == "24"
      @house_user = @t24
    elsif @house == "25"
      @house_user = @t25
    end

    if @leisure == "traveling"
      @leisure_user = @traveling
    elsif @leisure == "chilling"
      @leisure_user = @chilling
    elsif @leisure == "shopping"
      @leisure_user = @shopping
    elsif @leisure == "sports"
      @leisure_user = @sport
    elsif @leisure == "hanging_out"
      @leisure_user = @hangingout
    end

    @co2_weighted = (
      @work_user.to_f +
      @flight_user.to_f +
      @food_user.to_f +
      @house_user.to_f +
      @leisure_user.to_f
    )

    @transport_user = @work_user.to_f + @flight_user.to_f
    @transport_user = @transport_user.to_f.round(0)
    @food_user = @food_user.to_f.round(0)
    @house_user = @house_user.to_f.round(0)
    @leisure_user =@leisure_user.to_f.round(0)
    @co2 = @co2.to_f.round(0)
    @transport = @transport.to_f.round(0)
    @transport_country = @transport_country.to_f.round(0)
    @food_country = @food_country.to_f.round(0)
    @house_country = @house_country.to_f.round(0)
    @leisure_country =@leisure_country.to_f.round(0)
  end

  def search
    @ideas = Idea.all
    if params[:query].present?
      sql_query = "category ILIKE :query OR subcategory ILIKE :query OR location ILIKE :query"
      @ideas = Idea.where(sql_query, query: "%#{params[:query]}%")
    end
  end
end
