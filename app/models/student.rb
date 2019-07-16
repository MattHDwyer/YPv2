class Student < ApplicationRecord
  belongs_to :team
  has_many :team_students
  has_many :active_squads
end
