class CorrectGroupName < ActiveRecord::Migration
  def change
     remove_column :accounts, :group_name
     add_column :accounts, :group_name, :string
  end
end
