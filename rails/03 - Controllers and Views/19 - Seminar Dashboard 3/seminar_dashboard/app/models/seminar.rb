class Seminar < ApplicationRecord
  validates :seminar_number,
            presence: true,
            numericality: {
                only_integer: true,
                greater_than: 0
            }

    validates :date_started, presence: true
    validates :date_ended, presence: true
end
