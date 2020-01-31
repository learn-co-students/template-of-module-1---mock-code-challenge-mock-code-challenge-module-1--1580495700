class Driver
    attr_accessor :name, :all

    @@all = []

    def initialize(name)
        @name = name
    end

    def self.passenger_names
        passengers = Passenger.all.uniq
    end

    def self.rides
        rides = Ride.all
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        over_mileage = []
        if distance > mileage_cap
            over_mileage << self
        end
    end
end
