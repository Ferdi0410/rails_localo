class Step < ApplicationRecord
  belongs_to :user_tour
  belongs_to :tour_attraction
end
