class Machine < ApplicationRecord
  has_one_attached :machine_image
  belongs_to :user
  has_many :motors
  has_many :chassis
end
