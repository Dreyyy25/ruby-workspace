class CreateMessages < ActiveRecord::Migration[8.1]
  def change
    create_table :messages do |t|
      t.string :author
      t.string :messages
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
