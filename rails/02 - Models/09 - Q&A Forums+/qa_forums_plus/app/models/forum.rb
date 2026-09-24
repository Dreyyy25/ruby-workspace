class Forum < ApplicationRecord
  # creator_records are the rows in the creators table;
  # creators goes through them to the users (source: :user), so Forum.first.creators returns users
  has_many :creator_records, class_name: "Creator", dependent: :destroy
  has_many :creators, through: :creator_records, source: :user
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions

  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true
end
