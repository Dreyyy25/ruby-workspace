class Question < ApplicationRecord
  belongs_to :forum
  belongs_to :user

  has_many :answers
end
