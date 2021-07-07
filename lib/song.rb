class Song

  attr_accessor :artist, :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @artist = Artist.name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist == "Artist"
      nil
    else
      self.artist.name
    end
  end


end
