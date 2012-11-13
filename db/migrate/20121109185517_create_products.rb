class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :des
      t.decimal :price
      t.integer :stock_quanitity
      t.integer :category
      t.string :status
      t.datetime :create_at

      t.timestamps
    end
  end
end
