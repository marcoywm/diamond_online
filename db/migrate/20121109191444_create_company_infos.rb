class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.string :address
      t.string :phone
      t.string :fax
      t.string :info
      t.string :email

      t.timestamps
    end
  end
end
