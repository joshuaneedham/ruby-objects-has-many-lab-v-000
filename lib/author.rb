class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.artist = self
  end

  def posts
    @posts
  end

  def add_post_by_name(name)
    post = Post.new(name)
    @posts << post
    post.artist = self
  end

  def self.post_count
    @posts.count
  end

end
