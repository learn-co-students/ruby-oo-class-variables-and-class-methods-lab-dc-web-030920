class Song
attr_accessor :name, :artist, :genre, :count
@@count = 0
@@artists = []
@@genres = []

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
        #need to create a hash where each key is a genre and
        # each value is is the number of songs of that genre
        hash = {}
        @@genres.each do |genre|
            if hash[genre]
                hash[genre] += 1 
            else 
                hash[genre] = 1 
            end
        end
        hash
    end

    def self.artist_count
        #need to create a hash where each key is an artist and
        # each value is is the number of songs by that artist
        hash = {}
        @@artists.each do |artist|
            if hash[artist] 
                hash[artist] += 1 
            else 
                hash[artist] = 1 
            end
        end
        hash
    end




    def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@artists << artist
    @@genres << genre
    end
end
