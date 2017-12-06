class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    if params[:search]
      @musicians = @city.search_city_by_instrument(params[:search])
      render :show
    end
  end

end
