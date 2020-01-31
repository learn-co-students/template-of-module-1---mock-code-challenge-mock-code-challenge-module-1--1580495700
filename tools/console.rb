require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

p1 = Passenger.new("jo")
d1 = Driver.new('do')
r1 = Ride.new(p1, d1, 1.0)
Ride.all
binding.pry

puts "hae"