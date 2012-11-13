class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.decimal :price_purchase
      t.integer :quantity
      t.references :product
      t.references :order

      t.timestamps
    end
    add_index :line_items, :product_id
    add_index :line_items, :order_id
  end
end
