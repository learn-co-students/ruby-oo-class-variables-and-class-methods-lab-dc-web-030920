class Song
    @@all_songs = []
    @@artists = []
    @@genres = []
    @@count = 0 
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
        @@all_songs << self
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
        @@genre_h = {}
        @@genres.each do |genre|
            if !@@genre_h[genre]
                @@genre_h[genre] = 1
            else 
                @@genre_h[genre] += 1
            end
        end
        @@genre_h
    end

    def self.artist_count
        @@artists_h  = {}
        @@artists.each do |artist|
            if !@@artists_h[artist]
                @@artists_h[artist] = 1
            else 
                @@artists_h[artist] += 1
            end
        end
        @@artists_h
    end
end