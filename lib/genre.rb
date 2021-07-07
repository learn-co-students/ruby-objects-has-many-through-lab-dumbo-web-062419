require 'pry'
class Genre
    attr_accessor :genre
@@all = []

    def initialize(genre)
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @genre
    end

    def songs
        Song.all.select do|song|
            if song.genre == self
                song.genre
            end
        end
    end

    def artists
        songs.collect do|song|
            song.artist
        end
    end

end

# binding.pry