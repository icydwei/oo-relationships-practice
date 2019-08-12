class Guest
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def listings
        self.trips.map do |trips|
            trips.listing
        end
    end

    def trips
        Trip.all.find_all do |trips|
            trips.guest == self
        end
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        self.all.find_all do |guest|
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        self.all.find_all do |guest|
            guest.name == name
        end
    end

end