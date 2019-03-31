class AuctionItem
  attr_reader :name, :reserve_price, :sold_price, :description
  def initialize(unsold_item)
    @description = unsold_item[:description]
    @name = unsold_item[:name]
    @reserve_price = unsold_item[:reserve_price].to_f
    @sold_price = unsold_item[:sold_price].to_i
  end 

  def description
    @description
  end 

  def name
    @name
  end

  def sold_price
    @sold_price
  end 


  def is_sold?
    if @sold_price > 0
      true
    else
      false
    end 
  end 
end 