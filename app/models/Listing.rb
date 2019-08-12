class Listing
    attr_reader :city 
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end
    
    def self.all
        @@all
    end

    def trips
        Trip.all.find_all do |trip|
            trip.listing == self
        end
    end

    def guests
        self.trips.map do |trip|
            trip.guest
        end
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        self.all.find_all do |trip|
            trip.city == city
        end
    end

    def self.most_popular
        trip_count = {}
        Trip.all.each do |trip|
            if trip_count[trip.listing]
                trip_count[trip.listing]+=1
            else 
                trip_count[trip.listing]= 1
            end
        end
        trip_count.max_by do |trip, count|
            count
        end[0]
    end

end