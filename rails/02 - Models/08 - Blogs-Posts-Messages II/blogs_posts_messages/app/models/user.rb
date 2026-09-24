class User < ApplicationRecord
  # Owners association: A user can own many blogs through owners
  has_many :owners, dependent: :destroy
  has_many :blogs, through: :owners

  # Posts & Messages written by the user
  has_many :posts, dependent: :destroy
  has_many :messages, dependent: :destroy

  # Validations
  validates :first_name, :last_name, :email_address, presence: true
  validates :email_address, format: { with: URI::MailTo::EMAIL_REGEXP }
end