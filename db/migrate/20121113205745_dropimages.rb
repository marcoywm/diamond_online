class Dropimages < ActiveRecord::Migration
  def up
    
  end

  def self.down
    drop_table :images
  end
end
