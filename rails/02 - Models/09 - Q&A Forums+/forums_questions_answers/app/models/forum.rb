class Forum < ApplicationRecord
  has_many :creators, dependent: :destroy
  has_many :users, through: :creators
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions

  validates :title, :description, presence: true
end