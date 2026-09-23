class AddBlogToPosts < ActiveRecord::Migration[8.1]
  def change
    add_reference :posts, :blog, null: false, foreign_key: true
  end
end
