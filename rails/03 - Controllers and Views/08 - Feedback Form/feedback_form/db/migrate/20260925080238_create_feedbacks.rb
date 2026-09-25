class CreateFeedbacks < ActiveRecord::Migration[8.1]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :course
      t.integer :score
      t.string :reason

      t.timestamps
    end
  end
end
