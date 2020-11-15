class EnterpriseSocialNetwork < ApplicationRecord
  belongs_to :social_network_account
  belongs_to :enterprise
end
