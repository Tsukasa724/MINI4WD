class LapTimeToRace < ApplicationRecord
  has_many :shops
  belongs_to :user
end
