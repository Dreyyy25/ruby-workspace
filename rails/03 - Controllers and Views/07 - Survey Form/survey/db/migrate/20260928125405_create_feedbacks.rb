class CreateFeedbacks < ActiveRecord::Migration[8.1]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :course_title
      t.integer :given_score
      t.text :reason

      t.timestamps
    end
  end
end
