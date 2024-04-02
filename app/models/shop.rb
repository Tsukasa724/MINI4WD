class Shop < ApplicationRecord
  has_one_attached :shop_image
  has_one_attached :layout_image
  belongs_to :lap_time_to_race
end
