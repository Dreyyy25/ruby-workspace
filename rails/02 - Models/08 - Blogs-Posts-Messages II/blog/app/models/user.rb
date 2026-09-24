class User < ApplicationRecord
    has_many :user_pages, dependent: :destroy
    has_many :pages, through: :user_pages

    has_many :posts, dependent: :destroy
    has_many :messages, dependent: :destroy

    validates :name, presence: true
    validates :name, length: { minimum: 2 }
end
