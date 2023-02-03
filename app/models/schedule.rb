class Schedule < ApplicationRecord
  belongs_to :pet
  belongs_to :petsitter
end
