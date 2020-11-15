class CreateEnterpriseFavoriteSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprise_favorite_skills do |t|
      t.references :enterprise, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
