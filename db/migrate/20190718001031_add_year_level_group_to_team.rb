class AddYearLevelGroupToTeam < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :year_level_group, foreign_key: true
  end
end
