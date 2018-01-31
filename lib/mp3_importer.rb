class MP3Importer
  attr_accessor :path
  @@files = []

  def initialize(path)
    if Dir.exist?(path)
      @path = path
      puts "start"
      puts Dir.entries(path)
      puts "end"
      Dir.entries(path).each do |filename|
        self.files << filename if filename.end_with?(".mp3")
      end
    end
  end

  def files
    @@files
  end

  def import
    self.files.each do |filename|
      artist = Artist.new(filename)
      artist.save
    end
  end
end
