class CandidateSocialNetwork < ApplicationRecord
  belongs_to :social_network_account
  belongs_to :candidate
end
