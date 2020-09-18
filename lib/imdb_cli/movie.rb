class ImdbCli::Movie

    attr_accessor :name, :year, :director, :stars, :review, :url
  
    @@all = []
  
    def initialize(movie_hash)
      @name = movie_hash[:name]
      @year = movie_hash[:year]
      @director = movie_hash[:director]
      @stars = movie_hash[:stars]
      @review = movie_hash[:review]
      @url = "https://www.imdb.com/title/" + movie_hash[:url]
      @@all << self
    end
  
    def self.create_from_array(movie_array)
      movie_array.each do |movie|
        ImdbCli::Movie.new(movie)
      end 
    end
  
    # def add_movie_attributes(attributes_hash)
    #   attributes_hash.each do |key, value|
    #     send("#{key}=", value)
    #   end
    #   self
    # end
  
    def self.all
      @@all
    end
end