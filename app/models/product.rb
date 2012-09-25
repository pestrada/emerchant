class Product < ActiveRecord::Base
  attr_accessible :title, :price, :description, :image_url, :stock
  validates_numericality_of :price
  validates_numericality_of :stock, :only_integer => true, :greater_than_or_equal_to => 0
  has_many :order_items
  
  def price=(input)
    input.delete!("$")
    super
  end
  
end
