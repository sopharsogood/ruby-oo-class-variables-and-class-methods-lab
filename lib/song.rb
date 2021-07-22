class Song
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    attr_accessor :name, :artist, :genre

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
        @@genre_count_hash = {}
        @@genres.uniq.each do |genre|
            @@genre_count_hash[genre] = @@genres.select {|other_genre| other_genre == genre}.length
        end
        @@genre_count_hash
    end

    def self.artist_count
        @@artist_count_hash = {}
        @@artists.uniq.each do |artist|
            @@artist_count_hash[artist] = @@artists.select {|other_artist| other_artist == artist}.length
        end
        @@artist_count_hash
    end
end