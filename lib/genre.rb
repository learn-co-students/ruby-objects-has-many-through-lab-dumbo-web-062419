class Genre
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
    @@all
    end

    def songs
        Song.all.select do|song|
            if song.genre == self
                song.genre
            end
        end
    end

    def artists
        songs.collect do |song|
            song.artist
        end
    end
end