class Subscriber < ApplicationRecord
    validates :name, :contact_num, :is_enabled, presence: true
    validates :name, length: { minimum: 2 }
    validates :contact_num, numericality: { only_integer: true }
    validates :is_enabled, numericality: { in: (0..1) }
end
