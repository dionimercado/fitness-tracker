class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
  end

  def create
    # render plain: params[:activity].inspect

    @activity = Activity.new activity_params
    @activity.save

    redirect_to @activity
  end

  def show
    @activity = Activity.find params[:id]
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :date, :duration)
  end
end
