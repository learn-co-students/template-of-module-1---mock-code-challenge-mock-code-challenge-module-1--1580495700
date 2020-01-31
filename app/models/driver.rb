class Driver
    attr_accessor :name, :distance

    @@all = []

    def initialize(name)
        @name = name
        @distance = distance
        @@all << self
    end

    def passenger_names(name)
        Passenger.all.select do |passenger|
            passenger.driver == self
        end
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def self.all 
        @@all
    end

    def self.mileage_cap(distance)
        Ride.all.select {|ride| ride.distance > distance}
    end
end