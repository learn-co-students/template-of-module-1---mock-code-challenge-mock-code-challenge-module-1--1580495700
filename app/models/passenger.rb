

class Passenger
    
    attr_reader :name    
    @@all = []    
    @@premium_members = []   

    def initialize(name)
        @name = name
        @@all << self
    end

    def total_distance
        traveled = 0

        Ride.all.each do |details|
            # check if the instance has the passenger instance that called it
            if details.passenger.include?(self)
                # if so push driver into array
               traveled += details.distance
            end
        end
        traveled
    end

    def drivers
        drivers_array = []

        Ride.all.each do |details|
            # check if the instance has the passenger instance that called it
            if details.passenger.include?(self)
                # if so push driver into array
               drivers_array << details.driver
            end
        end
        drivers_array

    end

    # Ride.all === holds ride instance which is initialized from a driver, passenger, and distance
    def rides
        # creating the resulting array
        ride_array = []
        # go through all the Ride instances
        Ride.all.each do |details|
            # check if the instance has the passenger instance that called it
            if details.passenger.include?(self)
                # if so push ride instance to resulting array
               ride_array << details
            end
        end
        ride_array        
    end

    def self.all
        @@all
    end

    def self.premium_members
        # go through all instances of Ride.all
        Ride.all.each do |details|            
            if details.distance > 100
                @@premium_members << details.passenger
            end
        end
        @@premium_members
    end
end