class Question < ApplicationRecord
  belongs_to :forum
  belongs_to :user
  has_many :answers, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy

  validates :content, presence: true, length: { minimum: 7 }
end
