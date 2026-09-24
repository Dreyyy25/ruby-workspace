class Post < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  has_many :messages, dependent: :destroy

  # Add polymorphic relationship
  has_many :comments, as: :commentable, dependent: :destroy

  # Validations
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end