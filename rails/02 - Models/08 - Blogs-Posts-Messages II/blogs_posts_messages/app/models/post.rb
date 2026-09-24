class Post < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  has_many :messages, dependent: :destroy

  # Validations
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end