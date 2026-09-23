class Subscriber < ApplicationRecord

    validates :name, :contact_num, :is_enabled, presence: true

    validates :name, length: { minimum: 2 }

    validates_numericality_of :contact_num

    validates_numericality_of :is_enabled,
        only_integer: true,
        in: 0..1

end