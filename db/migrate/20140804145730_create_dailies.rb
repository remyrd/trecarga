class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.date :date
      t.integer :account_id
      t.string :glosa
      t.float :exchange
      t.float :debe
      t.float :haber
      t.integer :tran_type
      t.string :company_name

      t.timestamps
    end
  end
end
