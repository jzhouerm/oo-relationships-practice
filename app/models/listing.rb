require 'pry'
class Listing
    attr_accessor :listing, :city
    @@all = []

    def initialize(listing, city)
        @listing = listing
        @city = city
        @@all << self
    end

    def self.all #returns array of all listings
        @@all
    end

    def guests #returns array of guests who've stayed at a listing
        #list_a = [guest1"Amy", guest2"Bob"] #guests arent initialized w/ listing
        trips = Trip.all.select do |x| #lists out trips
            x.listing == self          #assigns the listing to current listing instance
        end
        trips.map do |x|       #finds the guest from within listing
            x.guest
        end
    end

    def trips #returns array of all trips at a listing DONE
        #list_a= [trip1, trip2]
        Trip.all.select do |trip|
            trip.listing == self 
        end
    end

    def trip_count #returns the # of trips that have been taken to that listing
        self.trips.length #counts above method
    end

    def self.find_all_by_city(city) #takes an argument of city name & returns all listings for that city
        self.class.all.select do |x|
            x.city == city
        end
    end

    def self.most_popular #finds listing that has the most trips
        @@all.max_by do |element|
            element.trip_count    #uses trip count method
        end
    end

end
