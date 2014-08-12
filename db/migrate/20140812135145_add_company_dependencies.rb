class AddCompanyDependencies < ActiveRecord::Migration
  def change
    add_column :groups, :company_name, :string
    add_column :accounts, :company_name, :string
  end
end
