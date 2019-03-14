require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre


  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    new_hash = {}
    # {"pop" => 1, "rap" => 2}
    @@genres.each do |genre|
      new_hash.has_key?(genre) ? new_hash[genre] += 1 : new_hash[genre] = 1
    end

    new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.each do |artist|
      new_hash.has_key?(artist) ? new_hash[artist] += 1 : new_hash[artist] = 1
    end
    new_hash

  end
end

lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")

lucifer.name
lucifer.artist
lucifer.genre


# binding.pry

puts "blabla"
