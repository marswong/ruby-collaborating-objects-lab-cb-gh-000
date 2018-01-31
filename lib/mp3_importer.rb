class MP3Importer
  attr_accessor :path
  @@files = []

  def initialize(path)
    if Dir.exist?(path)
      @path = path
      Dir.entries(path).select { |filename| filename.end_with?(".mp3") }
    end
  end

  def files
    @@files
  end
end
