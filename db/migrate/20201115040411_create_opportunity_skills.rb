class CreateOpportunitySkills < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunity_skills do |t|
      t.integer :years
      t.references :opportunity, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
