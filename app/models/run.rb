require_relative 'driver.rb'
require_relative 'passenger.rb'
require_relative 'ride.rb'
require 'pry'

matt = Passenger.new('Matt Heavner')
sebastian = Passenger.new('Sebastian Delima')
ryan = Passenger.new('Ryan Smith')

driver1 = Driver.new('Driver One')
driver2 = Driver.new('Driver Two')
driver3 = Driver.new('Driver Three')

ride1 = Ride.new(25, matt, driver1)
ride2 = Ride.new(100, sebastian, driver1)
ride3 = Ride.new(60, ryan, driver2)
ride4 = Ride.new(40, sebastian, driver3)
ride5 = Ride.new(15, matt, driver2)

# print Passenger.all
# print Driver.all
# driver1.driver_sum


# print ride1.driver
print Driver.mileage_cap(100)
# puts Passenger.premium_members
# Ride.average_distance
# matt.my_drivers_names
binding.pry
# print sebastian.rides
# print ryan.rides

