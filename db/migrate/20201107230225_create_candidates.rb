class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :liveliness
      t.boolean :open_to_work
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
