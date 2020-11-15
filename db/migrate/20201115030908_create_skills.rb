class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :skill_type
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
