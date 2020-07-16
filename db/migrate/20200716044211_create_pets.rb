class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :status
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
