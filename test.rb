require "pry"

class Post

attr_accessor :post, :author

@@all=[]

def initialize(title,author=nil)
  @title=title
  @author = author
  @@all << self
end

def self.all
  @@all
end

def author_name
  self.author
end

def title
  @title
end

end



class Author

attr_accessor :name

@@all=[]

def initialize(name)
  @name=name
  @@all << self
end

def posts
  Post.all
end

def add_post(post)
  post_instance = Post.new(post)
end

def self.post_count
 @@all.count
end

def add_post_by_title(title)
  post=Post.new(title,self.name)
end

end

post1 = Post.new("kaka","Ed")
post2 = Post.new("sam takoi")

binding.pry

p "eof"
