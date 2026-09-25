class CreateSeminars < ActiveRecord::Migration[8.1]
  def change
    create_table :seminars do |t|
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
