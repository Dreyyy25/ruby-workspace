class Subscriber < ApplicationRecord
  validates :name, :contact_num, :is_enabled, presence: true
  validates :name, length: { minimum: 2 }
  validates :contact_num, numericality: { only_integer: true }, length: { is: 11 }
  validates :is_enabled, numericality: { only_integer: true }, inclusion: { in: [0, 1] }
end
