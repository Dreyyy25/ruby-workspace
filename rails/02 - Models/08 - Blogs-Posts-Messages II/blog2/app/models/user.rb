class User < ApplicationRecord
    has_many :blog_users
    has_many :blogs, through: :owners, source: :blog_users
    has_many :posts
    has_many :messages

    validates :first_name, :last_name, :email, :password, presence: true
end
