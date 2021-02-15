class Artist
    attr_accessor :name
    
    def initialize(name)
        @name=name
        @songs=[]
    end

    def add_song(song)
        @songs << song
        song.artist=self
    end

    def songs
        Song.all.select {|s| s.artist==self}
    end

    def add_song_by_name(name)
        s=Song.new(name)
        s.artist=self
    end

    def self.song_count
        Song.all.length
    end
end