class Customer < ActiveRecord::Base
  belongs_to :province
  validates_presence_of :userName, :password, :fname, :lname, :address, :city,  :postCode, :phone, :email, :province_id
  validates_uniqueness_of :userName
end
