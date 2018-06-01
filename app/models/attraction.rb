class Attraction < ApplicationRecord
  has_many :tour_attractions
  has_many :tours, through: :tour_attractions
  has_many :steps, through: :tour_attractions
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def self.for_lat_lng(lat, lng)
  #   if self.address.distance_to(lat,lng) >
  #     return "Worked"
  #   else
  #     return nil
  #   end
  # end
end
