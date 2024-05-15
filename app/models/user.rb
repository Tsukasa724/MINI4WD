class User < ApplicationRecord
  has_one_attached :avatar
  mount_uploader :avatar, AvatarUploader
  has_many :machines, dependent: :destroy
  has_many :lap_time_to_races, dependent: :destroy
  has_many :parts, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
