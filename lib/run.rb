require 'pry'
require_relative './artist.rb'
require_relative './song.rb'
require_relative './author.rb'
require_relative './post.rb'

# code goes here!

# Artist instances
adele = Artist.new("Adele")
beyonce = Artist.new("Beyonce")
#
# # Song instances
# hello = Song.new("Hello")
# song = Song.new('Survivor')
# song2 = Song.new('My Heart Will Go On')

# Author instances
betty = Author.new("Betty")
sophie = Author.new('Sophie')

# # Post instances
hello_world = Post.new("Hello World")
post = Post.new('My Blog Post!')
post2 = Post.new('My Newest Blog Post!')



binding.pry
puts "Mischief managed!"
