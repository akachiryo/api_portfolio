class SkillType < ApplicationRecord
  has_many :skills, dependent: :destroy
end
