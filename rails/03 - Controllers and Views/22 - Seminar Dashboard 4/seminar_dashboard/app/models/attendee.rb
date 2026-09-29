class Attendee < ApplicationRecord
  belongs_to :seminar

  validates :first_name, :last_name, :email, presence: true
end
