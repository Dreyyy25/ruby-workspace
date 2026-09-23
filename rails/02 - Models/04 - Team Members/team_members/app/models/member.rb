class Member < ApplicationRecord
  belongs_to :team

  # Validations
  validates :name, :role, presence: true
end
