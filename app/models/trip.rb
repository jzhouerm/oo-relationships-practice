require 'pry'
class Trip 
    attr_accessor :guest, :listing 
    @@all = []

    def initialize(guest, listing) #JOIN MODEL includes subclass attributes
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all #returns array of all trips
        @@all
    end 

    # def listing #returns listing object for the trip
    # end

    # def guest #returns the guest object for the trip
    # end

end
