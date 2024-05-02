class Shop < ApplicationRecord
  has_one_attached :shop_image
  has_one_attached :layout_image
  has_many :lap_time_to_races
end
