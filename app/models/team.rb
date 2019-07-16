class Team < ApplicationRecord
  belongs_to :sport
  belongs_to :coach
  has_many :team_students
  has_one :active_squad
end
