class Friendship < ApplicationRecord
  belongs_to :user
  # the friend is also a User, so tell Rails which class to use
  belongs_to :friend, class_name: "User"

  validates :friend_id, uniqueness: { scope: :user_id, message: "is already a friend" }
  validate :not_friends_with_self

  private
    def not_friends_with_self
      errors.add(:friend, "can't be yourself") if user == friend
    end
end
