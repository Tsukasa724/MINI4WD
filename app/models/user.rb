class User < ApplicationRecord
  has_one_attached :avatar
  has_many :machines
  has_many :lap_time_to_races

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
