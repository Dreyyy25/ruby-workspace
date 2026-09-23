class CreateSubscribers < ActiveRecord::Migration[8.1]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :contact_num
      t.boolean :is_enabled

      t.timestamps
    end
  end
end
