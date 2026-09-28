class Seminar < ApplicationRecord
    has_many :attendees
    validates :date_start, :date_end, presence: true
end
