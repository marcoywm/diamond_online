class RemoveCreateAtToProducts < ActiveRecord::Migration
  def up
    remove_column :products, :create_at
      end

  def down
    add_column :products, :create_at, :datetime
  end
end
