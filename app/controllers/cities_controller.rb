class CitiesController < ApplicationRecord
  def index
    @cities = City.all
  end
end
