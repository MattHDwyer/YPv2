class CreateYearLevelGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :year_level_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
