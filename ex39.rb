# create a mapping of states to abbreviation
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York City'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

# do it by using the states then cities dict
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '-' * 10
states.each { |state, abbrev| puts "#{state} is abbreviated #{abbrev}" }

# puts every cities in state
puts '-' * 10
cities.each { |abbrev, city| puts "#{abbrev} has the city #{city}" }

# now do both at the same time
puts '-' * 10
states.each { |state, abbrev| puts "#{state} is abbreviated #{abbrev} and has city #{cities[abbrev]}" }

# by default ruby says "nil" when something isn't in there
puts 'Sorry, no Texas' unless states['Texas']

# default values using || = with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state TX is #{city}"
