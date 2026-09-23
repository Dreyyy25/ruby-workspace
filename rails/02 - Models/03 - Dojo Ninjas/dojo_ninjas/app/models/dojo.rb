class Dojo < ApplicationRecord
  # Relationship: A dojo has many ninjas
  # dependent: :destroy ensures that deleting a dojo automatically deletes all its ninjas!
  has_many :ninjas, dependent: :destroy

  # Validations
  validates :name, :city, :state, presence: true
  validates :state, length: { is: 2 }
end