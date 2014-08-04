class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :description
      t.integer :group_id

      t.timestamps
    end
  end
end
