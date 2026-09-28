class Creator < ApplicationRecord
  belongs_to :user
  belongs_to :forum

  # the same user can't be a creator of the same forum twice
  validates :user_id, uniqueness: { scope: :forum_id, message: "is already a creator of this forum" }
end
