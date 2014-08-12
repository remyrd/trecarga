class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :description
      t.integer :group_name

      t.timestamps
    end
  end
end
