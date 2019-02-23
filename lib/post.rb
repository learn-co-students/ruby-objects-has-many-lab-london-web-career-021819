# posts belongs to an author
# an author has many posts

class Post

  attr_accessor :title, :author
  # individual post needs a method to be able to read its own title
  # individual post needs a reference to the author it belongs to

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    # does this post have an author?  If so return the name of the author, if not, return nil 
    self.author ? self.author.name : nil
  end

end
