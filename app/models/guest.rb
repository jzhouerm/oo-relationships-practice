require 'pry'
class Guest
@@all = []
attr_accessor :guest

    def initialize(guest)
        @guest = guest
        @@all << self
    end

    def self.all #returns array of all guests
        @@all
    end

    def listings #returns array of all listings a guest stayed at
        #guest = listinga, listing b
        Trip.all.select do |guest|
            guest.listing == self
        end
    end

    def trips #defined trips to count trips below
        Trip.all.select do |element|
            element.guest == self
        end
    end

    def trip_count #returns the # of trips a guest has taken
       self.trips.length
    end

    def self.pro_traveller #returns an array of all guests who have made over 1 trip
        @@all.select do |x|
            x.trip_count > 1
        end
    end

    def self.find_all_by_name(name) #using string arg, returns guest with the name
        x = @@all.select do |i|
         i == name
        end
        x.each do |x| x.guest
        end
        # [1] pry(main)> Guest.find_all_by_name(guest1)
        # => [#<Guest:0x00007fedf792b5c0 @guest="Amy">]
    end
 end

