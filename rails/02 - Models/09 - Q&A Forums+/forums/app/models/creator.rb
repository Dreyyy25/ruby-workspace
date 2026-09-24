class Creator < ApplicationRecord
  belongs_to :user
  belongs_to :forum

  validates :user_id, uniqueness: { scope: :forum_id }
end
