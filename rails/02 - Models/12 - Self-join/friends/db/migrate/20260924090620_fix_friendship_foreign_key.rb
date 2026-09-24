class FixFriendshipForeignKey < ActiveRecord::Migration[8.1]
  def change
    remove_foreign_key :friendships, :friends

    add_foreign_key :friendships, :users, column: :friend_id
  end
end
