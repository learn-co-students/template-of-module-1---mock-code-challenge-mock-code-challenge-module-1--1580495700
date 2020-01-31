class Passenger
    attr_reader :name
    attr_accessor :ride, :driver

    @@all = []

    def initialize(name)
        @name = name
        @ride = ride
        @driver = driver
        @@all << self
    end

    def total_distance(name)
        Ride.distance.sum(0.0)
    end

    def self.all 
        @@all
    end

    def self.premium_members
        Ride.all.select {|ride| ride.distance > 100}
    end
end

