class CreateSeminars < ActiveRecord::Migration[8.1]
  def change
    create_table :seminars do |t|
      t.integer :seminar_number
      t.date :date_started
      t.date :date_ended

      t.timestamps
    end
  end
end
