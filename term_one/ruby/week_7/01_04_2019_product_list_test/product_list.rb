class ProductList
  def initialize(products)
    @products = products
  end


  def sort_by_price
    @products.sort { |x, y| x.price <=> y.price }
  end 

  def highest_price
    # sorted_products = @products.sort { |x, y| x.price <=> y.price }
    # sorted_products[-1]
    sort_by_price.last
  end 

  def find_by_name(name)
    @products.find {|product| product.name == name}
  end

end