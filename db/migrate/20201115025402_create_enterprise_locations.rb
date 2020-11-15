class CreateEnterpriseLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprise_locations do |t|
      t.references :enterprise, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
