class CreateAffiliations < ActiveRecord::Migration[8.1]
  def change
    create_table :affiliations do |t|
      t.references :company, null: false, foreign_key: true
      t.integer :partner

      t.timestamps
    end
  end
end
