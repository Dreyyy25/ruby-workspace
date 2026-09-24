class Page < ApplicationRecord
    has_many :user_pages, dependent: :destroy
    has_many :owners, through: :user_pages, source: :user

    has_many :posts, dependent: :destroy

    validates :name, :description, presence: true
end
