class AddAnimalNameToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :animal_name, :string
  end
end
