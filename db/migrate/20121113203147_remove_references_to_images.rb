class RemoveReferencesToImages < ActiveRecord::Migration
  def up
    remove_column :images, :references
      end

  def down
    add_column :images, :references, :string
  end
end
