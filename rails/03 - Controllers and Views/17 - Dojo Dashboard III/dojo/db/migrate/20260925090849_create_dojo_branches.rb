class CreateDojoBranches < ActiveRecord::Migration[8.1]
  def change
    create_table :dojo_branches do |t|
      t.string :branch
      t.string :street
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
