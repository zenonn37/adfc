class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :body
      t.integer :phone
      t.datetime :hours

      t.timestamps
    end
  end
end
