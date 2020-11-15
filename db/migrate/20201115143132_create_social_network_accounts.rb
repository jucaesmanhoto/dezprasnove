class CreateSocialNetworkAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :social_network_accounts do |t|
      t.string :social_network_name
      t.string :account_url

      t.timestamps
    end
  end
end
