# an artist should have many songs.
# a song should belong to an artist.

class Song

  attr_accessor :name, :artist # song instance belongs to an artist, so artist accessor is needed here

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # knows the name of its artist
  # returns nil if the song does not have an artist
  def artist_name
    self.artist ? self.artist.name : nil # does artist exist?  return artist name if it does.
  end

end
