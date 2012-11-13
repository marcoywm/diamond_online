class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :email
      t.string :postCode
      t.string :phone
      t.string :paymethod
      t.string :phone
      t.datetime :create_at
      t.string :pay_method
      t.decimal :amount
      t.integer :inv_num
      t.references :province
      t.references :customer

      t.timestamps
    end
    add_index :orders, :province_id
    add_index :orders, :customer_id
  end
end
