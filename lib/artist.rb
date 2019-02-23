# an artist should have many songs.
# a song should belong to an artist.

class Artist

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all
  end

  # I (self) am the artist!
  # put the song into my array of songs....(created by initialize method)
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # takes in an argument of a song name, creates a new song with it and associates the song and artist
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  # a class method that returns the total number of songs associated to all existing artists
  def self.song_count
    Song.all.count
  end

end
