class AddIndexDailies < ActiveRecord::Migration
  def change
    add_index :dailies, :company_name
  end
end
