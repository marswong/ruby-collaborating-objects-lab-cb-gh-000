class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self if !self.class.all.index { |artist| artist.name == self.name }
  end

  def self.find_or_create_by_name(name)
    self.all.index { |artist| artist.name == name } || self.new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
