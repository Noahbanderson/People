class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.integer :age
      t.belongs_to :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
