class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :message, presence: true, length: { minimum: 15 }
end
