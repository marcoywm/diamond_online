class CreateTableProducts < ActiveRecord::Migration
  def change
    create_table :table_products do |t|
      t.string :name
      t.string :product

      t.timestamps
    end
  end
end
