class Genre
  attr_accessor :name, :artist
  attr_reader :songs

  @@genres = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@genres << self
  end

  def artists
    @artists
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artists = []
    Song.all.select do |song|
      song.genre == self
      artists << song.artist
    end
    artists
  end


  #CLASS METHODS

  def self.all
    @@genres
  end


end
