class Author

  attr_accessor :name, :posts, :author, :title

@@count = 0

  def initialize(name)
    @name = name
    @author = author
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@count += 1
  end

  def add_post_by_title(new_post_title)
    newpost = Post.new(new_post_title)
    newpost.author = self
    @posts << newpost
    @@count += 1
  end

  def self.post_count
    @@count
  end

end
