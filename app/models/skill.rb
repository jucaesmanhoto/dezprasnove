class Skill < ApplicationRecord
  has_many :candidate_skills, dependent: :destroy
  has_many :candidates, through: :candidate_skills
  has_many :enterprise_favorite_skills, dependent: :destroy
  has_many :enterprises, through: :enterprise_favorite_skills

  validates :skill_type, inclusion: { in: %w[ soft hard],
                                    message: "%{value} is not a valid skill type" }
end
