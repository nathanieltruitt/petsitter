class CreatePetsitterPets < ActiveRecord::Migration[7.0]
  def change
    create_table :petsitter_pets do |t|
      t.belongs_to :petsitter, foreign_key: true
      t.belongs_to :pet, foreign_key: true
      t.timestamps
    end
  end
end
