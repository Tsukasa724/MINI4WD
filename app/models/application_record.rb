class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "Guest User"
      user.introduction = "ゲストアカウントです"
    end
  end
end
