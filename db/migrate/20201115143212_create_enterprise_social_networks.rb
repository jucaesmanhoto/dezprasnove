class CreateEnterpriseSocialNetworks < ActiveRecord::Migration[6.0]
  def change
    create_table :enterprise_social_networks do |t|
      t.references :social_network_account, null: false, foreign_key: true
      t.references :enterprise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
