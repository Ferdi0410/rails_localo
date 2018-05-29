class Tour < ApplicationRecord
  has_many :users, through: :user_tours
  has_many :user_tours, dependent: :destroy
end
