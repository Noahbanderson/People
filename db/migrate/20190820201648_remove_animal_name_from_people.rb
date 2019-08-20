class RemoveAnimalNameFromPeople < ActiveRecord::Migration[6.0]
  def change

    remove_column :people, :animal_name, :string
  end
end
