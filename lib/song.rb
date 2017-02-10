class Song
@@artists = [ ]
  @@genres =[ ]
  @@count = 0

  attr_accessor :name ,:artist ,:genre

  def initialize(name, artist, genre)
    @@count += 1
    @name =name
    @artist = artist
    @genre =genre
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
  hash = Hash.new(0)

  @@genres.each do |genr|
    hash[genr] += 1
  end
  hash
end
def self.artist_count
  artist_hash = Hash.new(0)

  @@artists.each do |art|
    artist_hash[art] += 1
  end
  artist_hash
end
end
