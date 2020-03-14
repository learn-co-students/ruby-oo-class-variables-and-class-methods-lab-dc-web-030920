require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = 3
        @@genres << genre
        @@artists << artist
        # binding.pry
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
        genre_count = {} 
        genre_count = @@genres.each_with_object(Hash.new(0)) do |genre, hash| 
        hash[genre] += 1
        genre_count
        end
    end

    def self.artist_count
        artist_count = {}
        artist_count = @@artists.each_with_object(Hash.new(0)) do |song, hash|
        hash[song] += 1
        artist_count
        end
    end
end