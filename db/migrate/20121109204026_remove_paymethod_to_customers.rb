class RemovePaymethodToCustomers < ActiveRecord::Migration
  def up
    remove_column :customers, :paymethod
      end

  def down
    add_column :customers, :paymethod, :string
  end
end
