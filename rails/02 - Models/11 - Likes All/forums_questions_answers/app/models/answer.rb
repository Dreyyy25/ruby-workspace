class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  # Polymorphic relationship
  has_many :likes, as: :likeable, dependent: :destroy

  validates :content, presence: true
end