class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :likes, as: :likeable, dependent: :destroy

  validates :content, presence: true, length: { minimum: 15 }
end
