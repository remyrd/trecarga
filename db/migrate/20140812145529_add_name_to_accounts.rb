class AddNameToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :name, :string
    remove_column :dailies, :account_id
    add_column :dailies, :account_name, :string
  end
end
