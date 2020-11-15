class Application < ApplicationRecord
  belongs_to :candidate
  belongs_to :opportunity
end
