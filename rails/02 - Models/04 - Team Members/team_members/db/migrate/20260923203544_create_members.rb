class CreateMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :members do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name, limit: 45
      t.string :role, limit: 45

      t.timestamps
    end
  end
end
