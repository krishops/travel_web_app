class HomeController < ApplicationController
  def index
    @mostpopular  = Popular.get_most_popular
  end 
end 