class Customer < ActiveRecord::Base
  belongs_to :province
  has_many :orders
  attr_accessible  :userName, :password, :password_confirmation, :fname, :lname, :address, :city,  :postCode, :phone, :email, :province_id, :pay_method
  validates_presence_of :userName, :password, :password_confirmation, :fname, :lname, :address,  :postCode, :phone, :email,  :pay_method
  validates_uniqueness_of :userName
   has_secure_password


end
