class Candidate < ApplicationRecord
  belongs_to :user
  has_many :applications, dependent: :destroy
  has_many :opportunities, through: :applications
  has_many :candidate_skills
  has_many :skills, through: :candidate_skills
  has_many :candidate_social_networks
  has_many :social_network_accounts, through: :candidate_social_networks
end
