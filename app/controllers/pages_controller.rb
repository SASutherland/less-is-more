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

    filepath = "./db/data/co2_country.csv"
    CSV.foreach(filepath, headers: :first_row) do |row|
        @countryCo2 = row[0]

      if @countryCo2 == @country
        @co2 = row[2]
      end
    end

    @co2 = @co2.to_f.round(2)
    @transportcountry = @co2 * 0.31
    @foodcountry	= @co2 * 0.28
    @housecountry = @co2 * 0.22
    @leisurecountry = @co2 * 0.19
    @transportcountry.to_f.round(2)
    @foodcountry.to_f.round(2)
    @housecountry.to_f.round(2)
    @leisurecountry.to_f.round(2)

    if @work == "car"
      @transport1 = @transportcountry * 1.2
    elsif @work  == "electrical_car"
        @transport1 = @transportcountry * 0.8
    elsif @work  == "Public Transport"
      @transport1 = @transportcountry * 0.5
    else
      @transport1 = @transportcountry * 0.3
    end

    if @flight == "1 flight"
      @transport2 = @transport1 * 0.9
    elsif @flight == "2 to 3 flights"
      @transport2 = @transport1 * 1
    elsif @flight == "4 to 6 flights"
      @transport2 = @transport1 * 1.2
    else
      @transport2 = @transport1 * 1.5
    end

    if @food == "Beef"
      @food = @foodcountry * 1.5
    elsif @food == "Pork/Poultry"
      @food = @foodcountry * 1
    elsif @food == "fish"
      @food = @foodcountry * 0.8
    else
      @food = @foodcountry * 0.3
    end

    if @house == "18" || "19" || "20"
      @house = @housecountry * 1
    elsif @house == "16"
      @house = @housecountry * 0.8
    elsif @house == "17"
      @house = @housecountry * 0.9
    elsif @house == "21"
      @house = @housecountry * 1.1
    elsif @house == "22"
      @house = @housecountry * 1.2
    elsif @house == "23"
      @house = @housecountry * 1.3
    elsif @house == "24"
      @house = @housecountry * 1.4
    elsif @house == "25"
      @house = @housecountry * 1.5
    end

    if @leisure == "Traveling"
      @leisure2 = @leisurecountry * 1.5
    elsif @leisure == "Chilling at home"
      @leisure2 = @leisurecountry * 0.3
    elsif @leisure == "Shopping"
      @leisure2 = @leisurecountry * 1.3
    elsif @leisure == "Sport and Arts"
      @leisure2 = @leisurecountry * 0.8
    elsif @leisure == "Hanging out"
      @leisure2 = @leisurecountry * 0.9
    end

    @transport2 = @transport2.to_f.round(2)
    @food.to_f.round(2)
    @house.to_f.round(2)
    @leisure2 = @leisure2.to_f.round(2)
    @co2_weighted = @transport2 + @food + @house + @leisure2
    @co2_weighted = @co2_weighted.to_f.round(2)


  end

  def search
    @ideas = Idea.all
    if params[:query].present?
      sql_query = "category ILIKE :query OR subcategory ILIKE :query OR location ILIKE :query"
      @ideas = Idea.where(sql_query, query: "%#{params[:query]}%")
    end
  end
end
