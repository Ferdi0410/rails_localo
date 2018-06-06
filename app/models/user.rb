class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_tours, dependent: :destroy
  has_many :steps, through: :user_tours
  has_many :tours, through: :user_tours
  mount_uploader :photo, PhotoUploader
end
