class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @songs = []
    self.name = name
  end

  def add_song(song)
    song.artist = self
    self.songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    self.add_song(Song.new(song_name))
  end

  def self.song_count
    @@song_count
  end

end
