class CreateAffiliations < ActiveRecord::Migration[8.1]
  def change
    create_table :affiliations do |t|
      t.references :company, null: false, foreign_key: true
      t.references :partner, null: false, foreign_key: { to_table: :companies }

      t.timestamps
    end
  end
end
