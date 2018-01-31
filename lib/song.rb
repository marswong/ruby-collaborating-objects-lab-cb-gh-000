class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    arr = filename.split(" - ")
    song = self.class.new(arr[1])
    artist = Artist.new(arr[0])
    song.artist = artist
  end
end
