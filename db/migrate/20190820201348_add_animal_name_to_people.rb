class AddAnimalNameToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :animal_name, :string
  end
end
