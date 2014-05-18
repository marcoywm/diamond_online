class Product < ActiveRecord::Base
  validates_presence_of :name, :des, :price, :stock_quantity, :category, :status
  validates_uniqueness_of :name
  ALLOW_Category=["Gold Jewellery", "Siver Jewellery", "Diamond Jewellery", "Metal Jewellery", "Crystal Jewellery", "Gem Jewellery"]
  validates_inclusion_of :category, :in => ALLOW_Category
  has_many :images, :dependent => :destroy
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :comments, :dependent => :destroy
  
  private
   def ensure_not_referenced_by_any_line_item
     if  line_items.empty?
       return true
     else
       errors.add(:base, 'Line Items present')
       return false
     end
   end
end
