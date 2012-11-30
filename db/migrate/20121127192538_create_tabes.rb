class CreateTabes < ActiveRecord::Migration
  def change
    create_table :tabes do |t|
      t.string :s

      t.timestamps
    end
  end
end
