require_relative 'auction_item.rb'

class AuctionItemList
  def initialize(auctions)
    @auctions = auctions
  end
# what i can use on the auction objects
  # attr_reader :name, :reserve_price, :sold_price, :description


  # def sort_by_price
  #   @products.sort { |x, y| x.price <=> y.price }
  # end 

  # def highest_price
  #   sorted_products = @products.sort { |x, y| x.price <=> y.price }
  #   sorted_products[-1]
  # end 

  def find_by_name(name)
    @auctions.find {|x| x.name == name}
  end

  def sort_by_sold_price
    select_sold_items.sort { |x, y| x.sold_price <=> y.sold_price }
  end

  def highest_sold_price
    sort_by_sold_price.last
  end

  def select_sold_items
    @auctions.select { |x| x.sold_price > 0 }
  end

  def select_unsold_items
    @auctions.select { |x| x.sold_price == 0 }
  end

  def select_items_by_sold_price_range
    @auctions.select { |x| x.sold_price > 100 && x.sold_price < 300 }
  end
end 

auction_item_list = AuctionItemList.new ([
  AuctionItem.new({
    :name => 'Antique',
    :reserve_price => '250',
    :sold_price => 0.0,
    :description => @paragraph,
}),
AuctionItem.new({
    :name => 'Vintage Sample',
    :reserve_price => '150',
    :sold_price => '200',
    :description => @paragraph,
}),
AuctionItem.new({
    :name => 'Olde Iteme',
    :reserve_price => '670',
    :sold_price => 0.0,
    :description => @paragraph,
}),
AuctionItem.new({
    :name => 'Olde Antique',
    :reserve_price => '95',
    :sold_price => '199',
    :description => @paragraph,
}),
AuctionItem.new({
  :name => 'Antique Sample',
  :reserve_price => '395',
  :sold_price => '399',
  :description => @paragraph,
}),
])


auction_item_list.highest_sold_price

