require "pry"
class Post

attr_accessor :post, :author

@@all=[]

def initialize(title,author=nil)
  @title=title
  @author = author
  @@all << self
end

def author=(author)
  @author=author
end

def self.all
  @@all
end

def author_name
  if self.author != nil
  self.author.name
else
  nil
end
end

def title
  @title
end

end
