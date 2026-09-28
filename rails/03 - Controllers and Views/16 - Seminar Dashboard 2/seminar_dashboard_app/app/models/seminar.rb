class Seminar < ApplicationRecord
    validates :seminar_number, :date_started, :date_ended, presence: true
end
