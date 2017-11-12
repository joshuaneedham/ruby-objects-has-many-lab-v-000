class Author
  attr_accessor :name

  @@post_count

  def initialize(name)
    @name = name
    @posts = []
  end

  def author_name(post)
    if post != name
      nil
    end
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    @posts.count
  end

end
