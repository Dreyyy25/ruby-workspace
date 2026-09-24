class Blog < ApplicationRecord
  # owner_records are the rows in the owners table;
  # owners goes through them to the users (source: :user), so Blog.first.owners returns users
  has_many :owner_records, class_name: "Owner", dependent: :destroy
  has_many :owners, through: :owner_records, source: :user
  has_many :posts, dependent: :destroy
  has_many :messages, through: :posts
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, :description, presence: true
end
