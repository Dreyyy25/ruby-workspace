class Seminar < ApplicationRecord
  has_many :attendees, dependent: :destroy

  validates :seminar_number, :start_date, :end_date, presence: true
  validates :seminar_number, numericality: true
end
