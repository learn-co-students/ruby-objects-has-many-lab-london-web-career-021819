class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs =[]
  end

  def add_song(new_song)
    # added_song = Song.new(song)
    # added_song.artist = self
    new_song.artist = self
    @songs << new_song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    Song.all.length
  end

end
