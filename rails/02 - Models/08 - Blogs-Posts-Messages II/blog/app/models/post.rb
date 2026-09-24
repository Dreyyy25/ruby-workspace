class Post < ApplicationRecord
  belongs_to :user
  belongs_to :page

  has_many :messages, dependent: :destroy
  
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
end
