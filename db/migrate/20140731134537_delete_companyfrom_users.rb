class DeleteCompanyfromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :company
    add_column :users, :company_name, :string
  end
end
