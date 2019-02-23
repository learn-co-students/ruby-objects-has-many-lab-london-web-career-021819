require "pry"

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artist = artist
  end

  def self.all
    @@all
  end

  def name
    @name
end

def artist_name
self.artist ? self.artist.name : nil
end


end
