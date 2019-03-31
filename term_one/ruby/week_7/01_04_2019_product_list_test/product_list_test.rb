require 'minitest/autorun'
require_relative 'product'
require_relative 'product_list'

class ProductListTest < MiniTest::Test
    def setup
        @product_list = ProductList.new([
            Product.new({
            :name => 'Widgit',
            :price => '10.99'
        }),
        Product.new({
            :name => 'Gadget',
            :price => '9.99'
        }),
        Product.new({
            :name => 'Sample',
            :price => '19.99'
        }),
    ])

    end

    def test_find_by_name
        found_product = @product_list.find_by_name('Gadget')
        assert_equal 9.99, found_product.price
    end

    def test_sort_by_price
        sorted_products = @product_list.sort_by_price
        assert_equal 'Gadget', sorted_products.first.name
        assert_equal 'Sample', sorted_products.last.name
    end

    def test_highest_price
        product = @product_list.highest_price
        assert_equal 'Sample', product.name
    end

end


# Use the Product class from a previous challenge
# (example solution here: https://gist.github.com/leahgarrett/06fe68fabd3589f7bdd6ea477b8ac8d1)
# Write a class called ProductList and make all the tests pass