class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  # creator_records are the rows in the creators table; forums goes through them
  has_many :creator_records, class_name: "Creator", dependent: :destroy
  has_many :forums, through: :creator_records
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..20 }
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 8 }
end
