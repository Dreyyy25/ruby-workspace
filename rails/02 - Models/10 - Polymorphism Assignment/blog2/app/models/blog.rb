class Blog < ApplicationRecord
    has_many :blog_users
    has_many :owners, through: :blog_users, source: :user
    has_many :posts

    has_many :comments, as: :commentable

    validates :name, :description, presence: true
end
