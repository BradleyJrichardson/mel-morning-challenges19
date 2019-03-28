require 'minitest/autorun'
require 'faker'
require_relative 'auction_item'

class AuctionItemTest < MiniTest::Test
    def setup
        @paragraph = Faker::Lorem.paragraph
        @unsold_item = AuctionItem.new({
            :name => 'Sample',
            :reserve_price => '10.99',
            :sold_price => 0.0,
            :description => @paragraph,
        })
        @sold_item = AuctionItem.new({
            :name => 'Other Sample',
            :reserve_price => '10.99',
            :sold_price => '200',
            :description => @paragraph,
        })
    end

    def test_name
        assert_equal 'Sample', @unsold_item.name
    end

    def test_reserve_price
        assert_equal 10.99, @unsold_item.reserve_price
    end

    def test_sold_price
        assert_equal 0.0, @unsold_item.sold_price
    end

    def test_description
        assert_equal @paragraph, @unsold_item.description
    end

    def test_is_sold?
        failure_message = "Failed when checking is_sold on unsold item"
        assert(@unsold_item.is_sold? == false, failure_message)

        failure_message = "Failed when checking is_sold on sold item"
        assert(@sold_item.is_sold? == true, failure_message)
    end
end

# Create a class for AuctionItem
# Keep adding code to create and implement methods until all the tests pass

# Beast
# Add more values to AuctionItem such as owner_name, purchase_date etc. For each one
# - add the test 
# - add the implementation
# - use Faker to make the data
