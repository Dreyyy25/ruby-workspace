class CreateSubscribers < ActiveRecord::Migration[8.1]
  def change
    create_table :subscribers do |t|
      t.string :name, limit: 45, null: false 
      t.string :contact_num, limit: 12, null: false 
      t.integer :is_enabled, default: 1, null: false 

      t.timestamps
    end
  end
end
