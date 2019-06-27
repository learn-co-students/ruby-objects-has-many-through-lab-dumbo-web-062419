class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @songs = []

        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
        Songs.all.select { |song| song.artist == self}
    end

    def new_song(name, genre)
        new_song = Song.new(name, self, genre)
        new_song.artist = self
        @songs << new_song
    end

    def songs
        @songs 
    end

end