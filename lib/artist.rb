class Artist
  attr_accessor :name, :songs
  @@all = []

  def self.all
    @@all
  end

  def self.song_count
    Song.all.count
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.artist = self
    @songs << new_song
  end

end
