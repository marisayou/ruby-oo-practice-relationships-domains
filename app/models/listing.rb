class Listing
    attr_reader :city

    @@all = []

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        most_trips = 0
        listing_with_most_trips = nil
        trip_counts = self.all.each do |listing|
            if listing.trip_count > most_trips
                listing_with_most_trips = listing
                most_trips = listing.trip_count
            end
        end
        listing_with_most_trips
    end

    def initialize(city)
        @city = city
        @@all << self
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        self.trips.map do |trip|
            trip.guest
        end
    end

    def trip_count
        self.trips.length
    end

end
