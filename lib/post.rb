class Post

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    return nil if !self.author
    self.author.name
  end


end
