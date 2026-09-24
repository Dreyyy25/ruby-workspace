class CreateBlogs < ActiveRecord::Migration[8.1]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
