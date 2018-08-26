class Song
  @@count=0 
  @@artists=[]
  @@genres=[] 
  @@genre_count={}
  attr_accessor :name, :artist, :genre
  
  def initialize(song,artist,genre)
    @@count+=1
    @@genres << genre
    @@artists << artist

    if @@genre_count.keys.include?(genre)==TRUE
      @@genre_count[genre]+=1 
    else 
      @@genre_count[genre]=1 
    end 
    
  end
  
  def self.count
    @@count 
  end 
  
  def self.artists
    @@artists.each {|a|
      if @@artists.include?(artist) == FALSE
        @@artists << artist 
      end 
  end 
  
  def self.genres
    if @@genres.include?(genre) == FALSE
      @@genres << genre

    end 
  end 
  
  def self.genre_count 
    @@genre_count
  end 
  
  def self.artist_count
    @@artist_count 
  end 
end