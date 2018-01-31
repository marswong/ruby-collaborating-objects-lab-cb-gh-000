class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    if Dir.exist?(path)
      @path = path
      @files = Dir.entries(path).select { |filename| filename.end_with?(".mp3") }
    end
  end

  def import
    self.files.each do |filename|
      artist = Artist.new(filename)
      artist.save
    end
  end
end
