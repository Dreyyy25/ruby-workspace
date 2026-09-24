class Comment < ApplicationRecord
  belongs_to :user                               # who wrote the comment
  belongs_to :commentable, polymorphic: true     # what it's on: a User, Blog, Post or Message

  validates :content, presence: true
end
