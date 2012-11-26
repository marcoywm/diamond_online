class Product < ActiveRecord::Base
  validates_presence_of :name, :des, :price, :stock_quantity, :category, :status
  validates_uniqueness_of :name
  ALLOW_Category=["Gold Jewellery", "Siver Jewellery", "Diamond Jewellery", "Metal Jewellery", "Crystal Jewellery", "Gem Jewellery"]
  validates_inclusion_of :category, :in => ALLOW_Category
  has_many :images, :dependent => :destroy
end
