class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |each_song_object|
            each_song_object.artist
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        test = self.songs.collect do |each_song_object|
            each_song_object.genre
        end
    end
end