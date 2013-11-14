class ChangeValueOfPrice < ActiveRecord::Migration
  def change
  	remove_column :rates, :price
  	add_column :rates, :price, :decimal, precision:5, scale:2

  end
end
