class Song
  @@count=0 
  @@artists=[]
  @@genres=[] 
  @@genre_count={}
  attr_accessor :name, :artist, :genre
  
  def initialize(song,artist,genre)
    @@count+=1
    @name=song
    @artist=artist
    @genre=genre
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count 
  end 
  
  def self.artists
    x=[]
    @@artists.each {|artist|
      if x.include?(artist) == FALSE
        x << artist 
      end}
    x
  end 
  
  def self.genres
    x=[]
    @@genres.each{|genre|
      if x.include?(genre) == FALSE
        x << genre
      end}
    x
  end 
  
  def self.genre_count 
    @@genres.each { |genre|
      if @@genre_count.keys.include?(genre)==TRUE
        @@genre_count[genre]+=1 
      else 
        @@genre_count[genre]=1 
      end }
    @@genre_count
  end 
  
  def self.artist_count
    @@artist_count 
  end 
end