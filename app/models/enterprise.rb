class Enterprise < ApplicationRecord
    belongs_to :user
    has_many :opportunities
    has_many :applications, through: :opportunities
    has_many :candidates, through: :applications
end
