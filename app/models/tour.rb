class Tour < ApplicationRecord
  has_many :users, through: :user_tours
  has_many :user_tours, dependent: :destroy
  has_many :attractions, through: :tour_attractions
  has_many :tour_attractions
end
