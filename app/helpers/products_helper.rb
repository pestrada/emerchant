module ProductsHelper
  
  def print_price(price)
    number_to_currency price
  end
  
  def print_stock(stock, requested = 1)
    if stock >= requested
      return "<span class=\"in_stock\">In Stock (#{stock})</span>".html_safe
    elsif stock > 0 && stock < requested
      return "<span class=\"low_stock\">Insufficient Stock (#{stock})</span>".html_safe
    else
      return "<span class=\"out_stock\">Out of Stock</span>".html_safe
    end
  end
  
end
