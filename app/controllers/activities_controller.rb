class ActivitiesController < ApplicationController
  def index
    @city = city(params[:id])
    @activities = Activity.where(city: @city)
  end

  def show
    @activities = Activity.find(params[:id])
  end
end
