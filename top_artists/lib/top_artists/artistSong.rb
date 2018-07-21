class ArtistSong
  
  # Attributes
  attr_accessor :artist, :song 
  
  @@all = []
  
  # new means to initialize unsaved or not stored
  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value)
    end
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all.push(self)
  end
  
  # create means a stored object (or save)
  def self.create(hash)
    artistsong = self.new(hash)
    artistsong.save
    artistsong
  end
  
  def self.create_from_collection(array)
    array.each do |hash|
      self.create(hash)
    end
  end
end