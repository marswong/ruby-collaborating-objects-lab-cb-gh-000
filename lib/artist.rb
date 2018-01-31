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
    self.all << self
  end

  def find_or_create_by_name(name)
    self.all.index { |artist| artist.name == name } || self.class.new(name)
  end

  def print_songs
  end
end
