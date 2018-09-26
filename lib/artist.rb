
require 'pry'
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
  end

  def songs
    Song.all.select do
      |song| song.artist == self
    end
  end

  def self.song_count
    Song.all.count #returns the number of elements
  end
end
