class Song
  @@all = []
  attr_accessor :name, :artist

def self.all
  @@all
end

    def initialize(name)
      @name = name
      @@all << self
    end

     def artist_name
      if self.artist
         artist.name
       else nil
       end
     end
end
   
