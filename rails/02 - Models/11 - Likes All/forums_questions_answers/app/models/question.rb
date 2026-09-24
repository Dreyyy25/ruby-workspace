class Question < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many :answers, dependent: :destroy

  # Polymorphic relationship
  has_many :likes, as: :likeable, dependent: :destroy

  validates :content, presence: true
end