class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.guest
    password = SecureRandom.urlsafe_base64
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = password
      user.password_confirmation = password
      user.name = "Guest User"
      user.introduction = "ゲストアカウントです"
    end
  end
end
