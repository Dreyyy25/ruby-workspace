class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :comments, as: :commentable, dependent: :destroy

  validates :message, presence: true, length: { minimum: 15 }
end
