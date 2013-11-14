class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :title
      t.decimal :price, precision: 6, scale:4
      t.integer :hour
      t.string :desp

      t.timestamps
    end
  end
end
