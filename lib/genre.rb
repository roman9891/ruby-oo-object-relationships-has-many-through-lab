class Genre
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
            each_song_object.genre == self
        end
    end

    def artists
        self.songs.collect do |each_song_object|
            each_song_object.artist
        end
    end
end