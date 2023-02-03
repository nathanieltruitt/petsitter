class Owner < ApplicationRecord
  has_many :owner_pets
  has_many :pets, through: :owner_pets
end
