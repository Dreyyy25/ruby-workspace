class CreateCompanies < ActiveRecord::Migration[8.1]
  def change
    create_table :companies do |t|
      t.string :name, limit: 45

      t.timestamps
    end
  end
end
