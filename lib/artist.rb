class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all    
  end
end
