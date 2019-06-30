class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  #new_song
  def new_song(songname, genre)
    new_song = Song.new(songname, self, genre)
  end

  #songs
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end


  #genres
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
