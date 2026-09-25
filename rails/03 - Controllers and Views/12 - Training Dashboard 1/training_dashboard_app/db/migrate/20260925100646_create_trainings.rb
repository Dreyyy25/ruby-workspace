class CreateTrainings < ActiveRecord::Migration[8.1]
  def change
    create_table :trainings do |t|
      t.integer :training_number
      t.date :date_started
      t.date :date_ended

      t.timestamps
    end
  end
end
