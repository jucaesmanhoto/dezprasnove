class Location < ApplicationRecord
	geocoded_by :address
	after_validation :geocode, if: :will_save_change_to_address?
	has_many :enterprise_locations, dependent: :destroy
	has_many :enterprise, through: :enterprise_locations
end
