class ActivitiesController < ApplicationController
 def index
  @activities = Activity.find(params[:id])
 end
end
