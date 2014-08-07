class AddObsoleteToDailies < ActiveRecord::Migration
  def change
    add_column :dailies, :obsolete, :boolean, default: :false
  end
end
