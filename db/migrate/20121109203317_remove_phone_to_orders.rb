class RemovePhoneToOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :phone
      end

  def down
    add_column :orders, :phone, :string
  end
end
