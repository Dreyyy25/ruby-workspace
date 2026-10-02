class CreateSubscribers < ActiveRecord::Migration[8.1]
  def change
    create_table :subscribers do |t|
      t.string :names, limit: 45
      t.string :contact_num, limit: 12
      t.integer :is_enabled, limit: 1

      t.timestamps
    end
  end
end
