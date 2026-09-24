class CreateCreators < ActiveRecord::Migration[8.1]
  def change
    create_table :creators do |t|
      t.references :user, null: false, foreign_key: true
      t.references :forum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
