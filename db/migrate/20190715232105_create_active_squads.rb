class CreateActiveSquads < ActiveRecord::Migration[5.2]
  def change
    create_table :active_squads do |t|
      t.references :team, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
