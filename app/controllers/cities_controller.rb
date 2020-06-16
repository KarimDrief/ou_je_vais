class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    @activities = @city.activities
  end
end
