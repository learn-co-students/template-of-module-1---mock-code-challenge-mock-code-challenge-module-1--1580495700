

class Driver

    attr_accessor :name
    
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.mileage_cap(traveled)
        distance_array = []        

        Ride.all.each do |details|
            # check if the instance has the passenger instance that called it
            if details.distance > traveled
                # if so push driver into array
               distance_array << details.driver
            end
        end
        distance_array
    end

    def passenger_names
        passengers_array = []

        Ride.all.each do |details|
            # check if the instance has the driver instance that called it
            if details.driver.include?(self)
                # if so push passenger into array
               passengers_array << details.passenger
            end
        end
        passengers_array.uniq
        passengers_array
    end

    def rides
        # all rides this driver is associated with
        rides_array = []

        Ride.all.each do |details|
            # check if the instance has the passenger instance that called it
            if details.driver.include?(self)
                # if so push ride into array
               rides_array << details
            end
        end
        rides_array
    end
end