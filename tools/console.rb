require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

john = Passenger.new("john")
james = Passenger.new("james")
tom = Passenger.new("tom")

ben = Driver.new("ben")
frank = Driver.new("frank")
bob = Driver.new("bob")


ride1 = Ride.new(frank, john, 10)
ride2 = Ride.new(frank, james, 10)
ride3 = Ride.new(bob, tom, 10)
ride4 = Ride.new(ben, john, 10)
ride5 = Ride.new(bob, james, 10)
ride6 = Ride.new(frank, tom, 10)
ride7 = Ride.new(ben, john, 10)
ride8 = Ride.new(bob, tom, 10)
ride9 = Ride.new(bob, james, 10)

binding.pry
