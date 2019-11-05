class Driver
    
    attr_accessor :driver_name
    @@all = []

    def initialize(driver_name)
        @driver_name = driver_name
        @@all << self
    end

    def self.all
        @@all
    end

    def passengers
        self.rides.collect do |ride|
            ride.passenger
        end
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def driver_sum
        sum = 0
        self.rides.each do |ride|
            sum += ride.distance
        end
        sum
    end

    def self.mileage_cap(distance)
        self.all.select do |driver|
            driver.driver_sum > distance
        end
    end
end