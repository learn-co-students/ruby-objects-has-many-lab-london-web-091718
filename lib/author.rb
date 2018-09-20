require "pry"

class Author

  attr_accessor :name

  @@authors = []

  def initialize(name)
    @name = name
    @@authors << self
    @posts = []
  end

  def posts
    @posts
  end

  def add_post (post)
    post.author = self
    @posts << post
  end

  def add_post_by_title (title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    Post.all.count
  end

end
