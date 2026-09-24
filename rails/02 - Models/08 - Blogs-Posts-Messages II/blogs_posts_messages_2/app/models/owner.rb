class Owner < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  # the same user can't own the same blog twice
  validates :user_id, uniqueness: { scope: :blog_id, message: "already owns this blog" }
end
