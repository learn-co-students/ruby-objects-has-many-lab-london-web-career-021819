class Author

  attr_accessor :name, :posts

  @@all_posts = 1

  def initialize(name)
    @name = name
    @posts = []
  end


  def add_post(post)
    @posts << post #add new post to author instance variable to store data
    post.author = self  # access the author attribute on this post, and assign it to me using the = sign’
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@all_posts +=1
  end

  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song
    song.artist = self
    @@all_posts +=1
  end

  def self.post_count
    @@all_posts
  end

end
