class ActiveSquad < ApplicationRecord
  belongs_to :team
  belongs_to :student
end
