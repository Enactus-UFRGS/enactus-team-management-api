class Team < ApplicationRecord
  validates :enactus_id, presence: true
  validates :name, presence: true
end
