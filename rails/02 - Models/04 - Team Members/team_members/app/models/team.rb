class Team < ApplicationRecord
  # Relationship: A team has many members
  # dependent: :destroy ensures deleting a team removes all associated members
  has_many :members, dependent: :destroy

  # Validations
  validates :name, :responsibility, presence: true
  validates :name, length: { minimum: 3 }
end