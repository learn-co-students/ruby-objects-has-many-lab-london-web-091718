

class Author
  attr_accessor :name

  def initialize (name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @posts << post
  end

  def add_post_by_title (new_post)
    post = Post.new(new_post)
    post.author = self
    @posts << post
  end

  def self.post_count
    Post.all.count
  end

end
