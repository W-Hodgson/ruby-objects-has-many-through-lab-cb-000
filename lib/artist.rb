class Artist

  @@all = []

  attr_accessor :name

  def initialize()
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song
    Song.new
  end

end
