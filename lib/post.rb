class Post

  @@all = []
  attr_accessor :author, :title

  def initialize(title)
    @title = title
    @@all << self
    @author = nil
  end

  def self.all
    @@all
  end

#let the post know who the author is
  def author_name
    self.author.name if self.author != nil
  end
end
