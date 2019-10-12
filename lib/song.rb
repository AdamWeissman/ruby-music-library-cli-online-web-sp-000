class Song

  attr_accessor :name, :artist, :genre
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end
    
  @@all = []
  
  def self.find_by_name(name)
    all.
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def self.create(name)
    song = new(name)
    song.save
    song
  end
  
  def save
    @@all << self
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs.push self if not genre.songs.include?(self)
  end

end
