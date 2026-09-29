class CreateSeminars < ActiveRecord::Migration[8.1]
  def change
    create_table :seminars do |t|
      t.integer :seminar_number
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
