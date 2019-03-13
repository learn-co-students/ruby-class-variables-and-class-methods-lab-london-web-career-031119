class Song 

attr_accessor :name,:artist,:genre

@@count = 0
@@artists = []
@@genres = []

def initialize (name,artist,genre)
  @name = name
  @@count += 1
  @artist = artist
  @@artists << artist
  @genre = genre
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

def self.artist_count
  hash_count = Hash.new(0)
  @@artists.each do |artist|
    hash_count[artist] += 1
  end
  hash_count
end

def self.genre_count
  hash_count = Hash.new(0)
  @@genres.each do |genre|
    hash_count[genre] += 1
  end
  hash_count
end

end