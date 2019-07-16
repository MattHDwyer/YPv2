class CreateTeamStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :team_students do |t|
      t.references :student, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
