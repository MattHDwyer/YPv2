class Team < ApplicationRecord
  belongs_to :sport
  belongs_to :coach
  belongs_to :year_level_group
  has_many :team_students
  has_one :active_squad
end
