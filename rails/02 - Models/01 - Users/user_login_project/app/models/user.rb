class User < ApplicationRecord
  # Require presence of all four fields
  validates :first_name, :last_name, :email_address, :age, presence: true

  # First and last name must be at least 2 characters
  validates :first_name, :last_name, length: { minimum: 2 }

  # Age must be numeric and between 10 and 149 (inclusive)
  validates :age, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 10, 
    less_than: 150 
  }
end