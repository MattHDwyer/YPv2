class RemoveLastNameFromCoach < ActiveRecord::Migration[5.2]
  def change
    remove_column :coaches, :last_name, :string
  end
end
