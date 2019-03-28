require "csv"
require "pry"

# this is a class
class City
  attr_reader :name, :country, :subcountry

  def initialize(name, country, subcountry)
    @name = name
    @country = country
    @subcountry = subcountry
  end
end

csv_text = File.read('world-cities.csv')
csv = CSV.parse(csv_text, headers: true)
# csv = CSV.read('world-cities.csv', header: true)
cities = []
csv.each do |row|
  row_data = row.to_hash

  puts row_data
  cities << City.new(
    row_data['name'],
    row_data['country'],
    row_data['subcountry']
  )
end

def subcountry_city_count(cities, country, subcountry)
  count = 0
  cities.each do |city|
    if city.country == country && city.subcountry == subcountry
      count += 1
    end
  end

  count
end

# selected_people = people.select {|person| person.salary > 55_000}


# city_count = subcountry_city_count(cities, 'Australia', 'Victoria')
# print 'ERROR!!! ' if city_count != 90
# puts("Expect Victoria, Australia to have 90 cities and got #{city_count}")

# city_count = subcountry_city_count(cities, 'United States', 'Florida')
# print 'ERROR!!! ' if city_count != 227
# puts("Expect Florida, United States to have 227 and got #{city_count}")


# 0. Run and verify it works
# 1. Use rubocop to detect violations
# 2. Fix all the rubocop violations
# 3. Run and verify the tests still work

# 4. Change the subcountry_city_count method to use select
def subcountry_city_count_select(cities, country, subcountry)
  array = cities.select {|city| city.country == country && city.subcountry == subcountry}
  array.length
end

city_counter = subcountry_city_count_select(cities, 'Australia', 'Victoria')
print 'ERROR!!! ' if city_counter != 90
puts("Expect Victoria, Australia to have 90 cities and got #{city_counter}")

city_counter = subcountry_city_count_select(cities, 'United States', 'Florida')
print 'ERROR!!! ' if city_counter != 227
puts("Expect Florida, United States to have 227 and got #{city_counter}")


# 5. Run and verify the tests still work
# 6. Add 3 more test cases

city_counter = subcountry_city_count_select(cities, 'Australia', 'Western Australia')
print 'ERROR!!! ' if city_counter != 16
puts("Expect Western Australia, Australia to have 16 cities and got #{city_counter}")

city_counter = subcountry_city_count_select(cities, 'Australia', 'Queensland')
print 'ERROR!!! ' if city_counter != 29
puts("Expect Queensland, Australia to have 29 cities and got #{city_counter}")

city_counter = subcountry_city_count_select(cities, 'Australia', 'New South Wales')
print 'ERROR!!! ' if city_counter != 53
puts("Expect New South Wales, Australia to have 53 cities and got #{city_counter}")



# 7. Run and verify the tests still work