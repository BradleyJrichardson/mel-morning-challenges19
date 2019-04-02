require 'minitest/autorun'
require 'faker'
require_relative 'auction_item'
require_relative 'auction_item_list'

class ProductListTest < MiniTest::Test
    def setup
      @paragraph = Faker::Lorem.paragraph
      @auction_item_list = AuctionItemList.new ([
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

      AuctionItem.new({
        :name => Faker::Name,
        :reserve_price => '395',
        :sold_price => '399',
        :description => @paragraph,
    }),

    ])

    end

    def test_find_by_name
      found_item = @auction_item_list.find_by_name('Olde Antique')
      assert_equal 95, found_item.reserve_price
    end

    def test_sort_by_sold_price
      found_item = @auction_item_list.sort_by_sold_price
      assert_equal 'Olde Antique', found_item.first.name
      assert_equal 'Antique Sample', found_item.last.name
    end

    def test_highest_sold_price
      found_item = @auction_item_list.highest_sold_price
      assert_equal 'Antique Sample', found_item.name
      assert_equal 399, found_item.sold_price
    end

    def test_select_sold_items
      found_item = @auction_item_list.select_sold_items
      assert_equal 3, found_item.length
    end

    def test_select_unsold_items
      found_item = @auction_item_list.select_unsold_items
      assert_equal 2, found_item.length
    end

    def test_select_items_by_sold_price_range
      found_item = @auction_item_list.select_items_by_sold_price_range
      assert_equal 2, found_item.length
    end




end


# Use the AuctionItem class from a previous challenge
# (example solution here: https://gist.github.com/leahgarrett/06fe68fabd3589f7bdd6ea477b8ac8d1)
# Write a class called AuctionItemList
# Make the test, test_find_by_name, pass 
# Use the existing test and the tests in the morning challenge as a guide to writing tests
# Write one test at a time. Make it pass before going on to the next test

# Beast
# Use faker to add at least 10 more test cases
# Use ranges to with the test data to ensure you still know the case being tested. eg: smallest price
# Use the seed to re-run the same test 