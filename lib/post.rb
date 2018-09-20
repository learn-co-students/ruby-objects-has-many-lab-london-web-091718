

class Post

  attr_accessor :title, :author, :author_name
  @@all = []

  def initialize (title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def author_name
    if author == nil
      return nil
    else
      return author.name
    end
  end

end
