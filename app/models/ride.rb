require_relative "driver"
require_relative "passenger"

class Ride

    AVG_DISTANCE = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        add_drive#(@driver, @passenger, @distance)

        AVG_DISTANCE << @distance
    end

    def self.average_distance
        AVG_DISTANCE.sum / AVG_DISTANCE.size
    end

    def add_drive#(driver, passenger, miles)
        @driver.rides << self
        @driver.passenger_names << @passenger.name
        @driver.add_distance(@distance)

        @passenger.rides << self
        @passenger.drivers << @driver
        @passenger.add_distance(@distance)
    end

end 