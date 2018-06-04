class Guide < ApplicationRecord
  has_many :tours
  mount_uploader :photo, PhotoUploader
end
