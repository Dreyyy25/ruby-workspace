class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { minimum: 15 }
end
