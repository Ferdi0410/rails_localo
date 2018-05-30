class TourAttraction < ApplicationRecord
  belongs_to :tour
  belongs_to :attraction
  has_many :steps
  has_many :user_tours, through: :steps
end
