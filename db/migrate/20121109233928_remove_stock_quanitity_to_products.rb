class RemoveStockQuanitityToProducts < ActiveRecord::Migration
  def up
    remove_column :products, :stock_quanitity
      end

  def down
    add_column :products, :stock_quanitity, :integer
  end
end
