class Petsitter < ApplicationRecord
  has_many :petsitter_pets
  has_many :pets, through: :petsitter_pets
end
