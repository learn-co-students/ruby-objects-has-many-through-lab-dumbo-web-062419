
class Song
  attr_accessor :name, :artist, :genre

  @@songs = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@songs << self
  end



  #CLASS METHODS
  def self.all
    @@songs
  end

end
