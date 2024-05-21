class Machine < ApplicationRecord
  has_one_attached :machine_image
  belongs_to :user
  has_many :motors, dependent: :destroy
  has_many :chassis, dependent: :destroy

  validates :machine_name, presence: true
  validates :machine_weight, presence: true
end
