require 'pry'
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self # all instances of songs stored in @@all array
  end

  def self.all  # class method that returns all the instances of song
    @@all
  end

  def artist_name
    if artist
      artist.name
    end
  end
end
