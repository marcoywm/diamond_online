class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :email
      t.string :postCode
      t.string :userName
      t.string :password
      t.string :phone
      t.string :paymethod
      t.string :phone
      t.string :pay_method
      t.decimal :pur_amount
      t.references :province

      t.timestamps
    end
    add_index :customers, :province_id
  end
end
