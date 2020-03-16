class Song

    attr_accessor :name, :artist, :genre 

    @@count = 0
    @@artists =[]
    @@genres = [] 


    def initialize(name, artist, genre)

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
        all_genres = @@genres 
        new_hash =  Hash.new(0)
        all_genres.each do |genres| new_hash[genres] += 1 end 
        new_hash 

    end 

    def self.artist_count 

        all_artists = @@artists
        new_hash =  Hash.new(0)
        all_artists.each { |artist| new_hash[artist] += 1 }
        new_hash 

    end 




end 
