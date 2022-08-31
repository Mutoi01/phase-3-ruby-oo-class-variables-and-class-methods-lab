require 'pry'
class Song
  attr_accessor :name, :artist , :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@genre_count ={}
  @@artist_count ={} 

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    if @@genres.include?(genre)
      @@genres.push(genre)
      @@genre_count[genre] += 1 
    else
      @@genres.push(genre)
       @@genre_count[genre] = 1
    end
    if @@artists.include?(artist)
      @@artists.push(artist)
      @@artist_count[artist] += 1 
    else
      @@artists.push(artist)
       @@artist_count[artist] = 1
    end

  end

  def self.count
    @@count
    # binding.pry 
  end

  def self.genres
     @@genres
     @@genres.uniq
  end

  def self.artists
  @@artists
  @@artists.uniq
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
    
  end
end