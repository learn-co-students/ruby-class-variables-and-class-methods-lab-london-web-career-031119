require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
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
    new_hash = Hash.new 0
    # binding.pry
    @@genres.each do |x|
      new_hash[x] += 1
    end
    new_hash
  end

  def self.artist_count
    new_hash = Hash.new 0
    @@artists.each do |x|
      new_hash[x] += 1
    end
    new_hash
  end

end
