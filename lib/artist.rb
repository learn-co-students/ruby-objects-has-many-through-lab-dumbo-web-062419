class Artist
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        genres = []
        Song.all.each do |song|
            genres << song.genre
        end
        return genres
    end
end