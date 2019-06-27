class Artist 
    attr_reader :name
    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end

    def new_song(song_name, song_genre)
    artist = self
    song = Song.new(song_name, artist, song_genre)

    end

    def songs
    Song.all.select {|songs| songs.artist == self} 
    
    end

    def genres
        songs.collect {|songs| songs.genre}
    end


   def  self.all
    @@all
   end

end