class Subscriber < ApplicationRecord
  # Presence validation for all fields
  validates :name, :contact_num, :is_enabled, presence: true

  # Name length at least 2 characters
  validates :name, length: { minimum: 2 }

  # Contact number must be numeric
  validates :contact_num, numericality: { only_integer: true }

  # is_enabled must be strictly 0 or 1
  validates :is_enabled, numericality: { 
    only_integer: true, 
    greater_than_or_equal_to: 0, 
    less_than_or_equal_to: 1 
  }
end