# Define a continent class. Give this class a couple of attributes, 
# one of which should be countries. This will be an attribute that is 
# an array of country objects. 
class Continent
  attr_accessor :countries
  def initialize(name)
    @name = name
    @countries = []
  end

  def add_country(country)
    @countries << country
  end
end

class Country
  def initialize(name)
    @name = name
    @states = []
  end

  def add_state(state)
    @states << state
  end
end

class State
  def initialize(name)
    @name = name
    @cities = []
  end

  def add_cities(cities)
    @cities << cities
  end
ende

class City
  def initialize(name)
    @name = name
  end
end

australasia = Continent.new("Australasia")
australasia.add_country(australia = Country.new("Australia"))
australia.add_state(victoria = State.new("Victoria"))
victoria.add_cities(melbourne = City.new('Melbourne'))



# Define a country class, state, and a city class. 
# Make some objects relating to each class, and assign 
# them to the relevant classes array attribute. 
# Eg, cities would be in an array relating to the ‘cities’ 
# attribute of a state or country object. 

# Add a continent view class that will display the details 
# within the continents

# Beast
# Populate the following data:
# Newcastle,Australia,New South Wales
australia.add_state(new_south_wales = State.new("New South Wales"))
new_south_wales.add_cities(newcastle = City.new('Newcastle'))

# Nerang,Australia,Queensland,
australia.add_state(queensland = State.new("Queensland"))
queensland.add_cities(nerang = City.new('Nerang'))

# Mulgrave,Australia,Victoria
victoria.add_cities(mulgrave = City.new('Mulgrave'))

# Mount Martha,Australia,Victoria
victoria.add_cities(mount_martha = City.new('Mount Martha'))

# Mount Gambier,Australia,South Australia
australia.add_state(south_australia = State.new("South Australia"))
south_australia.add_cities(mount_gambier = City.new('Mount Gambier'))

# Mount Eliza,Australia,Victoria
victoria.add_cities(mount_eliza = City.new('Mount Eliza'))

# Mosman,Australia,New South Wales
new_south_wales.add_cities(mosman = City.new('Mosman'))

# Mornington,Australia,Victoria
victoria.add_cities(mornington = City.new('Mornington'))

# Mildura,Australia,Victoria
victoria.add_cities(mildura = City.new('Mildura'))

# Melton,Australia,Victoria
victoria.add_cities(melton = City.new('Melton'))


pp australasia.countries



# Beast++
# Use the world-cities.csv to create instances 
# of the country, state and cities classes