class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
    @tours = Tour.joins("LEFT JOIN tour_attractions ON tour_attractions.tour_id = tours.id  LEFT JOIN attractions ON tour_attractions.attraction_id = attractions.id").group(:id)
    @tours = @tours.where(sql_query, query: "%#{params[:query]}%") if params[:query].present?

    @tours = @tours.where(category: params[:category]) if params[:category].present?

      # @tours = Tour.joins(:tour_attractions, :attractions).where(sql_query, query: "%#{params[:query]}%")
    # else
      # @tours = Tour.all
    # @tours = Tour.where(category: params[:category]) if params[:category]
    # end
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def start_tour
    @tour = Tour.find(params[:id])
    current_user.tours << @tour
    current_user.user_tours.last.update(status:"incomplete")
    redirect_to play_tour_path(@tour)
  end

  def play
    @tour = Tour.find(params[:id])
    @attractions = Attraction.near([params[:latitude], params[:longitude]], 1, order: "distance").first
    # @attraction = Attraction.for_lat_lng(params[:latitude], params[:longitude])

    respond_to do |format|
      format.html
      format.js # views/tours/play.js.erb
    end
  end
end



