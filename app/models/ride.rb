class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.passenger
        @passenger
    end

    def self.driver
        @driver
    end

    def self.distance
        @distance.to_f
    end

    def self.average_distance
        @@all.sum / @@all.length
    end
end
