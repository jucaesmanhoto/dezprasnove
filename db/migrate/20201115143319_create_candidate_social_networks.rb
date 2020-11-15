class CreateCandidateSocialNetworks < ActiveRecord::Migration[6.0]
  def change
    create_table :candidate_social_networks do |t|
      t.references :social_network_account, null: false, foreign_key: true
      t.references :candidate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
