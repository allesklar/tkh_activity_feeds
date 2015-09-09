class ActivitiesController < ApplicationController

  before_action :authenticate
  before_action :authenticate_with_admin

  def index
    @activities = Activity.by_recent.paginate(:page => params[:page], :per_page => 50)
    switch_to_admin_layout
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    redirect_to activities_path, notice: "<span class='glyphicon glyphicon-heart'></span> <strong>Success</strong> This activity item has been deleted.".html_safe
  end

end
