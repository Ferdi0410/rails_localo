class Attraction < ApplicationRecord
  has_many :tours, through: :tour_attractions
  has_many :tour_attractions
end
