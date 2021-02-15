class Song
    @@all=[]
    attr_accessor :name, :title, :artist
    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist.name if self.artist
    end
end