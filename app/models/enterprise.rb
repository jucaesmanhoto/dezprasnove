class Enterprise < ApplicationRecord
    belongs_to :user
    has_many :opportunities
    has_many :applications, through: :opportunities
    has_many :candidates, through: :applications
    has_many :enterprise_locations, dependent: :destroy
    has_many :locations, through: :enterprise_locations
    has_many :enterprise_favorite_skills
    has_many :skills, through: :enterprise_favorite_skills
    has_many :enterprise_social_networks
    has_many :social_network_accounts, through: :enterprise_social_networks
end
