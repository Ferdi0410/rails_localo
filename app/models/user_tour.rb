class UserTour < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  has_many :steps, dependent: :destroy
  has_many :tour_attracions, through: :steps

  after_create :create_steps

  private

  def create_steps
    tour.tour_attractions.each do |tour_attract|
      Step.create(user_tour: self, tour_attraction: tour_attract, completed: "is-future")
    end
  end
end
