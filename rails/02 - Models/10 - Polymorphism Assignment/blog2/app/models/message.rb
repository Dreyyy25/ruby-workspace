class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post

  has_many :comments, as: :commentable

  validates :content, presence: true
end
