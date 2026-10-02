class Member < ApplicationRecord
  belongs_to :team
  validates :name, :role, presence: true, length: { maximum: 45 }
end
