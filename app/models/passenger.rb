class Passenger
    @@all = []
    PREMIUM_MEMBERS = []

    attr_reader :name
    attr_accessor :rides, :drivers, :total_distance

    def initialize(name)
        @name = name 
        @rides = []
        @drivers = []
        @total_distance = 0

        @@all << self
    end

    def add_distance(miles)
        @total_distance += miles
        if @total_distance > 100
            PREMIUM_MEMBERS << self
        end
    end

    def self.all
        @@all
    end

    def self.premium_members
        PREMIUM_MEMBERS
    end


end
