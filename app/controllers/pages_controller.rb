class PagesController < ApplicationController
  def home
    @tours = Tour.all.sample(3)
  end
end
