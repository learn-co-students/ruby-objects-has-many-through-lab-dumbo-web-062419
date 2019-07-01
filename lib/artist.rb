require 'pry'


class Artist
  attr_accessor :name, :song

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    genres = []
    Song.all.select do |song|
      #binding.pry
      song.artist == self
      genres << song.genre
    end
    genres
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end


  #CLASS METHODS

  def self.all
    @@artists
  end

end
