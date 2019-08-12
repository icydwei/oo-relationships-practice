require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Pry.start
rob = Guest.new("Rob")
pete = Guest.new("Pete")
marisa = Guest.new("Marisa")
peyton = Guest.new("Peyton")
rob2 = Guest.new("Rob")

new_york =Listing.new("New York")
santorini = Listing.new("Santorini")
dubai = Listing.new("Dubai")
las_vegas = Listing.new("Las Vegas")
tokyo = Listing.new("Tokyo")

trip1 = Trip.new(new_york, rob)
trip2 = Trip.new(new_york, pete)
trip3 = Trip.new(new_york, marisa)
trip4 = Trip.new(santorini, rob)
trip5 = Trip.new(dubai, rob)
trip6 = Trip.new(las_vegas, rob)
trip7 = Trip.new(tokyo, rob)
trip8 = Trip.new(santorini, marisa)
trip9 = Trip.new(tokyo, pete)
trip10 = Trip.new(dubai, marisa)
trip11 = Trip.new(las_vegas, peyton)

puts "**Guest Class Tests**"
puts "#listings returns an array of all listings a guest has stayed at"
print rob.listings
puts "\n\n"
puts "#trips returns an array of all trips a guest has made"
print rob.trips
puts "\n\n"
puts "#trip_count returns the number of trips a guest has taken"
print rob.trip_count
puts "\n\n"
puts "#.all returns an array of all guests"
print Guest.all
puts "\n\n"
puts "#.pro_traveller returns an array of all guests who have made over 1 trip"
print Guest.pro_traveller
puts "\n\n"
puts "#.find_all_by_name(name) takes an argument of a name (as a string), returns the all guests with that name"
print Guest.find_all_by_name("Rob")
puts "\n\n"

puts "**Listing Class Tests**"
puts "#guests returns an array of all guests who have stayed at a listing"
print new_york.guests
puts "\n\n"
puts "#trips returns an array of all trips at a listing"
print new_york.trips
puts "\n\n"
puts "#trip_count returns the number of trips that have been taken to that listing"
print new_york.trip_count
puts "\n\n"
puts ".all returns an array of all listings"
print Listing.all
puts "\n\n"
puts ".find_all_by_city(city) takes an argument of a city name (as a string) and returns all the listings for that city"
print Listing.find_all_by_city("New York")
puts "\n\n"
puts ".most_popular finds the listing that has had the most trips"
print Listing.most_popular
puts "\n\n"