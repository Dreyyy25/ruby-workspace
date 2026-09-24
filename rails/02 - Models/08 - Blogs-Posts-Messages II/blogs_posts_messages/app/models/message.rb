class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # Validations
  validates :author, :message, presence: true
  validates :message, length: { minimum: 15 }
end