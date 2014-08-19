class CorrectExchange < ActiveRecord::Migration
  def change
  	remove_column :dailies, :exchange
  	add_column :dailies, :exchange, :string
  end
end
