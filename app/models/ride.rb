

class Ride

    attr_accessor :driver, :passenger, :distance

    @@total_distance = 0.0
    @@total_rides = 0
    # hopefully contains information on each instance 
        # such as driver, passenger, distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
        
        @@total_distance += distance
        @@total_rides += 1
    end

    def self.average_distance
        total_distance / total_rides
    end

    def self.all
        @@all
    end
end