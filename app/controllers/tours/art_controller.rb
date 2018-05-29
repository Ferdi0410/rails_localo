class Tours::ArtController < ApplicationController
  def index
    @tours = Tour.where(category: "art")
  end
end
