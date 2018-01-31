class MP3Importer
  attr_accessor :path
  @@files = []

  def initialize(path)
    if Dir.exist?(path)
    end
    @path = path
    
  end

  def files
    @@files
  end
end
