class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def artist=(artist)
    @artist = Artist.new(artist)
  end

  def self.all
    @@all
  end
end
