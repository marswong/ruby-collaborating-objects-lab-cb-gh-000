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
    index = self.class.all.index { |artist| artist.name == self.name }
    if index
      self.class.all[index].songs << self.songs
    else
      self.class.all << self
    end
  end

  def self.find_or_create_by_name(name)
    self.all.index { |artist| artist.name == name } || self.new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
end
