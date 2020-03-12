# frozen_string_literal: true
require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@count = 0 # integer 
  @@artists = []
  @@genres = []
#   @@artist_count
#   @@genre_count

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    # @@count << self
    @@artists << artist
    @@genres << genre
  end

#   def song
#     @name
#     @artist
#     @genre
#   end

  def self.count
    @@count # can't use .length with integers, only strings
  end

  def self.artists
    @@artists = @@artists.uniq!
  end

  def self.genres
    @@genres = @@genres.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
