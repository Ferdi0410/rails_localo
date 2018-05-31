class TourAttraction < ApplicationRecord
  belongs_to :tour
  belongs_to :attraction
  has_many :steps, dependent: :destroy
  has_many :user_tours, through: :steps

  def coordinates
    {
      lat: attraction.latitude,
      lng: attraction.longitude
    }
  end
end
