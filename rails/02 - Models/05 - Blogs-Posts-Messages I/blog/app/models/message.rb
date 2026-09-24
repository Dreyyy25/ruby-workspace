class Message < ApplicationRecord
  belongs_to :post

  validates :author, :messages, presence: true
  validates :messages, length: { minimum: 15 }
end
