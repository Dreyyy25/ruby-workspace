class Post < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :page

  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end
