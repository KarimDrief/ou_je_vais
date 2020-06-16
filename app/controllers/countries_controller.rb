class CountriesController < ApplicationController
  def index
    if params[:query].present?
      @countries = Country.where(name: params[:query])
       redirect_to country_path(@countries[0])
    else
      @countries = Country.all
    end
  end

  def show
    @country = Country.find(params[:id])
    @cities = @country.cities
  end
end
