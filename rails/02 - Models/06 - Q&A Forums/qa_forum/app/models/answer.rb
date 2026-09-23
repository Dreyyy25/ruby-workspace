class Answer < ApplicationRecord
  belongs_to :question

  validates :content, presence: true
  validates :content, length: { minimum: 15 }
end
