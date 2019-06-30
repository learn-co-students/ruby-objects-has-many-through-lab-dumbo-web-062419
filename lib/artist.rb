class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end
    
    def self.all
        @@all
    end

    # given a name and genre, creates a new song associated with that artist
    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    # Returns all the instances of songs where artist == self, or artist is yourself
    def songs
        Song.all.select { |song| song.artist == self}
    end

    # Returns all the instances of songs where artist is yourself, AND transforms the array into all the genres of songs where artist is yourself
    # Returns all the genres of your songs
    def genres
        songs.map { |song| song.genre}
    end

end