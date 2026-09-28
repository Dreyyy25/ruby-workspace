class Student < ApplicationRecord
  belongs_to :dojo

  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "is invalid" }
end
