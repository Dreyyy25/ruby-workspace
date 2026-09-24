class User < ApplicationRecord
  has_many :creators, dependent: :destroy
  has_many :forums, through: :creators
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  validates :username, :email_address, :password, presence: true
  validates :email_address, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end