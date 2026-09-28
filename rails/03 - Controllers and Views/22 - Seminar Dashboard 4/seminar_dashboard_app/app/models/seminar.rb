class Seminar < ApplicationRecord
    has_many :attendees, dependent: :destroy
    
    validates :seminar_number, :date_started, :date_ended, presence: true
end
