class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  #add new instances of songs to the Artist's song collection
  def add_song(song)
    @songs << song
    song.artist = self #tell the song that it belongs to this artist
  end

#access the songs (Returns songs instances array)
  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  #count all the songs ever created
    def self.song_count
      Song.all.length
    end

end
