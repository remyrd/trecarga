class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :typo
      t.string :address
      t.string :city
      t.string :country
      t.string :phone
      t.string :cellphone
      t.string :email

      t.timestamps
    end
  end
end
