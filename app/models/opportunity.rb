class Opportunity < ApplicationRecord
  belongs_to :enterprise
  has_many :applications
  has_many :candidates, through: :applications
end
