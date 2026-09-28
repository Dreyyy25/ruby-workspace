class Seminar < ApplicationRecord
    validates :date_start, :date_end, presence: true
end
