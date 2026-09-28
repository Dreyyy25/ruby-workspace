class Attendee < ApplicationRecord
  belongs_to :seminar

  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "is invalid" }
end
