class Song

  @@all = []
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @@all << self
    @artist = artist
  end

  def self.all
    @@all
  end

#count all the songs ever created
  def self.song_count
    @@all.length
  end

#let the song know who the artist is
  def artist_name
      self.artist.name if self.artist != nil  
  end
end
