class Blog < ApplicationRecord
  # Owners association: Allows Blog.first.owners to return user objects
  has_many :owners, dependent: :destroy
  has_many :users, through: :owners, source: :user

  # Posts & Messages associated with the blog
  has_many :posts, dependent: :destroy
  has_many :messages, through: :posts

  # Validations
  validates :name, :description, presence: true
end