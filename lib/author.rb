class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  #add new instances of posts to the Author's post collection
  def add_post(post)
    @posts << post
    post.author = self #tell the post that it belongs to this author
  end

#access the posts (Returns posts instances array)
  def posts
    @posts
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    Post.all.count
  end


end
