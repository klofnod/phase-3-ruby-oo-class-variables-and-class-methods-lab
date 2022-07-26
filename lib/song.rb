class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre 
        @@artists << artist
        @@count +=1
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
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



end


