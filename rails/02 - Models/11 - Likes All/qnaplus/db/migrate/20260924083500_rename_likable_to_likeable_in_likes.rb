class RenameLikableToLikeableInLikes < ActiveRecord::Migration[8.1]
  def change
    rename_column :likes, :likable_type, :likeable_type
    rename_column :likes, :likable_id, :likeable_id
  end
end
