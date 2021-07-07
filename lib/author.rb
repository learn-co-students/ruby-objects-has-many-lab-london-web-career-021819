class Author

attr_accessor :name, :author

  def initialize(name)
    @name = name
  end

  def posts
    Post.all
  end

  def add_post(post)
    @post = post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @post = post
    post.author = self
  end

  def self.post_count
    Post.all.count
  end

end
