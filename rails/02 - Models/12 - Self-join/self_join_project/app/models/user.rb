class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
  validates :first_name, :last_name, :email_address, :age, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates_numericality_of :age, greater_than_or_equal_to: 10, less_than: 150
end
