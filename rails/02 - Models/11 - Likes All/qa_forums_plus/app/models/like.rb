class Like < ApplicationRecord
  belongs_to :user                            # who clicked like
  belongs_to :likeable, polymorphic: true     # what was liked: a User, Forum, Question or Answer

  # a user can like the same thing only once
  validates :user_id, uniqueness: { scope: [:likeable_type, :likeable_id], message: "already liked this" }
end
