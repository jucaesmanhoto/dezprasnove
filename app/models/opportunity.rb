class Opportunity < ApplicationRecord
  belongs_to :enterprise
  has_many :applications
  has_many :candidates, through: :applications
  has_many :opportunity_skills
  has_many :skills, through: :opportunity_skills
end
