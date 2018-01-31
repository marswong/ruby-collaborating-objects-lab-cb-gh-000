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

  def save
    self.all << self
  end

  def find_or_create_by_name(name)
    self.all.index { |obj| obj.name == name } || self.class.new(name)
  end

  def print_songs
    self.all.each { |k, v| puts v }
  end
end
