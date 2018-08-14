class Team < ApplicationRecord
  validates :enactus_id, uniqueness: true, presence: true
  validates :name, presence: true

end
