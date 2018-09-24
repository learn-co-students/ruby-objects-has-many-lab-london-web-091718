
class Artist

  attr_accessor :name

   def initialize(name)
    @name = name
    @songs = []
    end

   def songs
    @songs
  end

   def add_song(name)
    @songs << name
    name.artist = self
  end

  def add_song_by_name(title)
     song = Song.new(title)
     song.artist = self
     @songs << song
   end

    def self.song_count
     Song.all.count
   end
  end
