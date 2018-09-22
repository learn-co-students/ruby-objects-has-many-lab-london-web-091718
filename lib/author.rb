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

def add_post(post_instance)
  post_instance.author=self
  Post.all << post_instance
end

def self.post_count
 Post.all.uniq.count
end

def add_post_by_title(title)
  post_instance = Post.new(title)
  post_instance.author = self
end


end
