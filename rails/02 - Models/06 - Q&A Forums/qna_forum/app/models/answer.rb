class Answer < ApplicationRecord
  belongs_to :question

  validates :content, presence: true, length: { minimum: 15 }
end
