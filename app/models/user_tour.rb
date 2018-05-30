class UserTour < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  validates :user, uniqueness: { scope: :tour }
  has_many :steps
  has_many :tour_attracions, through: :steps

  after_create :create_steps

  private

  def create_steps
    tour.tour_attractions.each do |tour_attract|
      Step.create(user_tour: self, tour_attraction: tour_attract, completed: false)
    end
  end
end
