class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end


  def author_name
    # if author != nil
    #   author.name
    # else
    #   nil
    # end

    author != nil ? author.name : nil
  end


end
