class PetsitterPet < ApplicationRecord
  belongs_to :petsitter
  belongs_to :pet
end
