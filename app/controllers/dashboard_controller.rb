class DashboardController < ApplicationController
  def index
    # country_object = Travel.new(params[:search])
    # @country = country_object.get_review()
    render :index
  end

  def result
    country_object = Travel.new(params[:search])
    @country = country_object.get_review()
    render :result
  end 
end 