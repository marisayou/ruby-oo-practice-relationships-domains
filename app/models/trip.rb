class Trip
    attr_reader :listing, :guest

    @@all = []

    def self.all
        @@all
    end

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@all << self
    end

end