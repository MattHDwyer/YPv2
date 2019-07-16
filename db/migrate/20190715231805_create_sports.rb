class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :name
      t.references :season, foreign_key: true
      t.string :gender

      t.timestamps
    end
  end
end
