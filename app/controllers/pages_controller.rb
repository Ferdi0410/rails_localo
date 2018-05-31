class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @tours = Tour.all.sample(3)
  end
end
