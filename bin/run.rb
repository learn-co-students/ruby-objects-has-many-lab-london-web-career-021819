require "pry"
require_relative "../lib/artist.rb"
require_relative "../lib/author.rb"
require_relative "../lib/post.rb"
require_relative "../lib/song.rb"


adele = Artist.new("Adele")
hello = Song.new("Hello")
song = Song.new('Survivor')
drake = Artist.new('Drake')

song.artist = drake



binding.pry

puts "done"
