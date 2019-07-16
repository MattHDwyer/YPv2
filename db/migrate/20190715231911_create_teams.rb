class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :sport, foreign_key: true
      t.references :coach, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
