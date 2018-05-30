class TourAttraction < ApplicationRecord
  belongs_to :tour
  belongs_to :attraction

end
