class CreateTrainings < ActiveRecord::Migration[8.1]
  def change
    create_table :trainings do |t|
      t.integer :training_number
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
