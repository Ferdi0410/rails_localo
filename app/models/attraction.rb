class Attraction < ApplicationRecord
  has_many :tour_attractions
  has_many :tours, through: :tour_attractions
  has_many :steps, through: :tour_attractions
end
