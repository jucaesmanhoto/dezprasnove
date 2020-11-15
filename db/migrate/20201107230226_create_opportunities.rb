class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.string :job_title
      t.text :job_description
      t.string :contract_type
      t.string :job_type
      t.string :contact_email
      t.string :contact_phone
      t.string :contact_name
      t.string :contact_job_position
      t.boolean :show_contact_info, default: false
      t.references :enterprise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
