class RemoveInfoFromCompanyInfo < ActiveRecord::Migration
  def up
    remove_column :company_infos, :info
      end

  def down
    add_column :company_infos, :info, :string
  end
end
