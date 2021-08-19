class DashboardController < ApplicationController

  def index
    render :index
  end

  def country
    country_object = Country.new(params[:country])
    @country = country_object.get_country_review()
  end 

  def city
    city_object = City.new(params[:city])
    @city = city_object.get_city_review()
  end 

end 