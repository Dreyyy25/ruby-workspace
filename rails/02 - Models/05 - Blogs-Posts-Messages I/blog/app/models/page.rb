class Page < ApplicationRecord
    has_many :posts, dependent: :destroy

    validates :name, :description, presence: true
end
