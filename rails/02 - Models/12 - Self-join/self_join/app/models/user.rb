class User < ApplicationRecord
  has_many :friendships, dependent: :destroy
  # friends goes through friendships to each row's friend, which is also a User
  has_many :friends, through: :friendships

  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
end
