class ActivitiesController < ApplicationController

  before_action :authenticate
  before_action :authenticate_with_admin

  def index
    @activities = Activity.by_recent.paginate(:page => params[:page], :per_page => 50)
    switch_to_admin_layout
  end

end
