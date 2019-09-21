class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song|
      song.artist = self
    }
  end

  def self.find_or_create_by_name
  end

  def print_songs
    self.songs
  end

end
