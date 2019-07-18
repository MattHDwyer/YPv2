class RemoveFirstNameFromCoach < ActiveRecord::Migration[5.2]
  def change
    remove_column :coaches, :first_name, :string
  end
end
