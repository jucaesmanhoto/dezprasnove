class EnterpriseFavoriteSkill < ApplicationRecord
  belongs_to :enterprise
  belongs_to :skill
end
