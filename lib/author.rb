class Author
  attr_accessor :name, :post

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select{|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
  end

  def self.post_count
    count_post =Post.all.select{|post| post.author}
    count_post.length
  end

end
