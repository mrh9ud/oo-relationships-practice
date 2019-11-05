class Ride
    
    attr_accessor :passenger, :driver, :distance
    @@all = []
    
    def initialize(distance, passenger, driver)
        @distance = distance.to_f
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        sum = 0
        arr = @@all.collect do |ride|
            ride.distance
        end
        arr.each do |distance|
            sum += distance
        end
        sum/(@@all.length)
    end
end