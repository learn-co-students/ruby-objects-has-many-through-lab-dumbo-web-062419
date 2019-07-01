class Genre
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        artists = []
        Song.all.each do |song|
            if song.genre == self
                artists << song.artist
            end
        end
        return artists
    end
end