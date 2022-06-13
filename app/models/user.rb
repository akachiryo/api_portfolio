class User < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_secure_password
  # has_one_attached :avatar
  has_one_base64_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

end
