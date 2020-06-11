class CountriesController < ApplicationController
  def index
  @countries = Country.all
  end

  def show
  @country = Country.find(params[:id])
  @activities = @country.activities
  end
end
