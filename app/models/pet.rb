class Pet < ApplicationRecord
  has_many :owner_pets
  has_many :owners, through: :owner_pets
  has_many :petsitter_pets
  has_many :petsitters, through: :petsitter_pets
  has_many :schedules
end
