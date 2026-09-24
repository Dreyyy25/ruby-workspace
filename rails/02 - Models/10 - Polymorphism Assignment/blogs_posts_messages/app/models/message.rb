class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # Add polymorphic relationship
  has_many :comments, as: :commentable, dependent: :destroy

  # Validations
  validates :author, :message, presence: true
  validates :message, length: { minimum: 15 }
end