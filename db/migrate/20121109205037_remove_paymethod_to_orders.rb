class RemovePaymethodToOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :paymethod
      end

  def down
    add_column :orders, :paymethod, :string
  end
end
