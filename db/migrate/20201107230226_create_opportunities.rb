class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.string :job_title
      t.text :job_description
      t.string :contract_type
      t.references :enterprise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
