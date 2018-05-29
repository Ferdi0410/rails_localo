class ToursController < ApplicationController
  def index
    # @tours = Tour.where(city: @city)
    @tours = Tour.all
    @tours = Tour.where(city: params[:city]) if params[:city]
    @tours = Tour.where(category: params[:category]) if params[:category]
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def play
    @tour = Tour.find(params[:id])
  end
end
