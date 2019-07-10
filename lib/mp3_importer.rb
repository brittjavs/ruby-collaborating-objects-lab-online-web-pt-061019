
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(path).select {|entry| entry.include?(".mp3")}
  # Dir.glob("#{path}/*.mp3").collect do |file|
  #     file.gsub("#{path}/", "")
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
      
      #takes the filename from file method and passes it to Song class method 
    end
  end
  
end