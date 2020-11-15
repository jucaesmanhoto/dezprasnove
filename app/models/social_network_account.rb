class SocialNetworkAccount < ApplicationRecord
    has_many :enterprise_social_networks
    has_many :enterprises, through: :enterprise_social_networks
    has_many :candidate_social_networks
    has_many :candidates, through: :candidate_social_networks
end
