class AuctionItem
  attr_reader :name, :reserve_price, :sold_price, :description
  
  def initialize(csv_row)
      @name = csv_row[:name]
      @reserve_price = csv_row[:reserve_price].to_i
      @sold_price = csv_row[:sold_price].to_i
      @description = csv_row[:description]
  end

  def is_sold?
      @sold_price > 0
  end
end