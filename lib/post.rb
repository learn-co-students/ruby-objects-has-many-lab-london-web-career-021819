require "pry"

class Post

  attr_accessor :title, :author, :name, :post

  @@all = []

  def initialize(name)
@name = name
@@all << self
@author = author
end

def self.all
  @@all
end

def title
@name
end

def author_name
  self.author ? self.author.name : nil
end

end
