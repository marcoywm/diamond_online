class Order < ActiveRecord::Base
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchased order" ]
  validates :fname, :address, :email, presence: true
  validates :pay_method, inclusion: PAYMENT_TYPES
  belongs_to :province
  belongs_to :customer
  has_many :line_items, dependent: :destroy

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
