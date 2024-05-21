class User < ApplicationRecord
  has_one_attached :avatar
  mount_uploader :avatar, AvatarUploader
  has_many :machines, dependent: :destroy
  has_many :lap_time_to_races, dependent: :destroy
  has_many :parts, dependent: :destroy

  # フォローをした、されたの関係
  has_many :relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy, inverse_of: :follower
  has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy, inverse_of: :follower
  # 一覧画面で使う
  has_many :followings, through: :relationships, source: :followed
  has_many :followers, through: :reverse_of_relationships, source: :follower

  has_many :user_rooms, dependent: :destroy
  has_many :rooms, through: :user_rooms
  has_many :chats, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true, on: :create

  def follow(user_id)
    relationships.create(followed_id: user_id)
  end

  # フォローを外すときの処理
  def unfollow(user_id)
    relationships.find_by(followed_id: user_id).destroy
  end

  # フォローしているか判定
  def following?(user)
    followings.include?(user)
  end
end
