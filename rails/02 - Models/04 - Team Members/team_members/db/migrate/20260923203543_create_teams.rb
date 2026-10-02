class CreateTeams < ActiveRecord::Migration[8.1]
  def change
    create_table :teams do |t|
      t.string :name, limit: 45
      t.string :responsibility, limit: 255

      t.timestamps
    end
  end
end
