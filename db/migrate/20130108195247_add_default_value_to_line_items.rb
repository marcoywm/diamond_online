class AddDefaultValueToLineItems < ActiveRecord::Migration
  def change
    change_column :Line_items, :quantity, :integer, :default => 1

  end
end
