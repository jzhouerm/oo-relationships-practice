require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require 'pry'
listing_a = Listing.new("Apt 1", "NY")
listing_b = Listing.new("Apt 2", "NY")
listing_c = Listing.new("Apt 3", "LA")

guest1 = Guest.new("Amy")
guest2 = Guest.new("Bob")
guest3 = Guest.new("Chris")


trip1 = Trip.new(guest1, listing_a)
trip2 = Trip.new(guest2, listing_a)
trip2 = Trip.new(guest2, listing_a)
listing_a.guests
Listing.most_popular
guest1.trip_count
Guest.pro_traveller
Guest.find_all_by_name(guest1) #redo...supposed to take string and return guest variable name
binding.pry
#ruby tools/console.rb
