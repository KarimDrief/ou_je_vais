class ActivitiesController < ApplicationController
  def index
    @country = country(params[:id])
    @activities = Activity.where(country: @country)
  end

  def show
    @activities = Activity.find(params[:id])
  end
end
