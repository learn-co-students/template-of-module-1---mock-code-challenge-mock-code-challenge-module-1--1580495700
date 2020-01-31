class Passenger
    attr_reader :name

    @@all = []
    def initialize
        @name = name
        @@all << self
    end

    def self.name
        @name
    end

    def self.rides
        total_rides = Ride.all
        # new_ride = Ride.new
        # total_rides = []
        # total_rides << new_ride
    end

    def self.drivers
        drivers = Driver.all
    end

    def self.total_distance
        total_miles = 0
        Ride.distance += total_miles
    end

    def self.all
        @@all
    end

    def self.premium_members
        premium = []
        if self.total_miles > 100
            premium << self
        end
        premium
    end
end
