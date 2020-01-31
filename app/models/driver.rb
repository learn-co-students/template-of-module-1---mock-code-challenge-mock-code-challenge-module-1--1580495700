class Driver
    attr_reader :name
    attr_accessor :rides, :passenger_names, :total_distance

    @@all = []

    def initialize(name)
        @name = name
        @passenger_names = []
        @rides = []
        @total_distance = 0
        @@all << self
    end

    def add_distance(miles)
        @total_distance += miles
    end
    
    def self.all
        @@all
    end

    def self.mileage_cap(cap)
        @@all.filter do |drivers|
            drivers.total_distance > cap
        end
    end

end
