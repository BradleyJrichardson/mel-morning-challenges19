class Product
  attr_reader :name, :price
  
  def initialize(csv_row)
      @name = csv_row[:name]
      @price = csv_row[:price].to_f
  end
end