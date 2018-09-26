require 'pry'
require_relative 'post.rb'

class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
  end

  def posts
    Post.all.select  do
      |post_instance| post_instance.author == self
    end
  end

  def self.post_count
    Post.all.count
  end
end
