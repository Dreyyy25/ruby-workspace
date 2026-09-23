class User < ApplicationRecord

  # Validation for "Not Null" in Rails for all columns
  validates :first_name, :last_name, :age, :email, presence: true

  # Validates the numericality of the "age" column
  validates :age,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 10,
      less_than: 150
    }

  # For setting the minimum characters of "first_name" and "last_name"
  validates :first_name, :last_name, length: { minimum: 2 }

end