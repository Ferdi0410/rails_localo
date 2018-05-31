class ToursController < ApplicationController
  def index
    # @tours = Tour.where(city: @city)
    # @tours = Tour.all
    # @tours = Tour.where(city: params[:city]) if params[:city]
    # if params[:query].present?
    sql_query = " \
    tours.title ILIKE :query \
    OR tours.city ILIKE :query \
    OR attractions.title ILIKE :query \
    "
    @tours = Tour.joins("LEFT JOIN tour_attractions ON tour_attractions.tour_id = tours.id  LEFT JOIN attractions ON tour_attractions.attraction_id = attractions.id").all
    @tours = @tours.where(sql_query, query: "%#{params[:query]}%") if params[:query].present?

    @tours = @tours.where(category: params[:category]).uniq if params[:category].present?
      # @tours = Tour.joins(:tour_attractions, :attractions).where(sql_query, query: "%#{params[:query]}%")
    # else
      # @tours = Tour.all
    # @tours = Tour.where(category: params[:category]) if params[:category]
    # end
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def play
    @tour = Tour.find(params[:id])
  end
end



