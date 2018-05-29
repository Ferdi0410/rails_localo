class PagesController < ApplicationController
  def home
    @tours = Tour.all.sample(10)
  end
end
