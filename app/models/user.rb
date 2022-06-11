class User < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_secure_password
  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

   def avatar_url
    # 紐づいている画像のURLを取得する
    avatar.attached? ? url_for(avatar) : nil
  end
end
