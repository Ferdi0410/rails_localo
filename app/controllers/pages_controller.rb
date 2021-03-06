class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @tours = Tour.all
    @guides = Guide.all
  end

  def guide
    @guide = Guide.find(params[:id])
  end

  def profile
    @tours = current_user.tours
    @user_tours_unwalked = current_user.user_tours.where(status:"unwalked")
    @user_tours_walked = current_user.user_tours.where(status:"walked")
  end

end
