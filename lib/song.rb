require 'pry'

class Song 

attr_accessor :name
attr_accessor :artist
attr_accessor :genre

@@count=0
@@artists=[]
@@genres=[]

def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre

    @@count+=1
    @@artists.push(self.artist)
    @@genres.push(self.genre)
    
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
    x = {}
    @@genres.uniq.each do |genre|
        x[genre]=0
    end
    @@genres.each do |genre|
        if x.key?(genre)
            x[genre]+=1
        end
    end
    x
end
def self.artist_count 
    artists = {}
    @@artists.uniq.each do |artist|
        artists[artist]=0
    end
    @@artists.each do |artist|
        if artists.key?(artist)
            artists[artist]+=1
        end
    end
artists
end
    
end
