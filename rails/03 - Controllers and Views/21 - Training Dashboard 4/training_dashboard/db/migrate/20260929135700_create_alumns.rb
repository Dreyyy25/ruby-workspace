class CreateAlumns < ActiveRecord::Migration[8.1]
  def change
    create_table :alumns do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_role
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
