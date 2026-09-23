class Question < ApplicationRecord
  belongs_to :forum, dependent: :destroy
  has_many :answers

  validates :content, presence: true, length: { minimum: 7 }
end
