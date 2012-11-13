class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.references :product

      t.timestamps
    end
    add_index :images, :product_id
  end
end
