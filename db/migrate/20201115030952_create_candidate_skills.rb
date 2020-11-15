class CreateCandidateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :candidate_skills do |t|
      t.references :candidate, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
