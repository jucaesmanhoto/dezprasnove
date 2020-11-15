class EnterpriseLocation < ApplicationRecord
  belongs_to :enterprise
  belongs_to :location
end
