class AddInfoToCompanyInfo < ActiveRecord::Migration
  def change
    add_column :company_infos, :info, :text

  end
end
