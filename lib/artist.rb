class Artist

  attr_accessor :name, :songs, :song

  @@count = 0

  def initialize(name)
    @songs = []
    @name = name
    @song = song
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@count += 1
  end

  def self.song_count
    @@count
  end

  def add_song_by_name(song)
    songn = Song.new(song)
    songn.artist = self
    @songs << songn
    @@count += 1
  end

end
