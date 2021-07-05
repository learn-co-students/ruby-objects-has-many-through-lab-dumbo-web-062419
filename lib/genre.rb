class Genre

  attr_accessor :name, :song, :artist

  @@all = []

  def initialize(name)
    @name = name
    @song = song
    @artist = artist

    @@all << self
  end

  def self.all
    @@all
  end

  #songs

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  #artists
  def artists
    result = []
    Song.all.select do |song|
      if song.genre == self
        result << song.artist
      end
    end
    result 
  end

end
