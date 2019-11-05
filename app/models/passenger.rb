class Passenger
    
    attr_accessor :passenger_name
    @@all = []
    
    def initialize(passenger_name)
        @passenger_name = passenger_name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        self.rides.collect do |ride|
            ride.driver
        end
    end

    def total_distance
        tot_distance = rides.collect do |ride|
            ride.distance
        end
        tot_distance.inject(0.0) {| sum, distance | sum + distance}
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end

    def my_drivers_names
        self.drivers.collect do |driver|
            driver.driver_name
        end.uniq
    end
end