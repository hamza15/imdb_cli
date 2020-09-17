class ImdbCli::CLI

    def call
        greeting
        ImdbCli::Scraper.scrape
        make_movies
        user_experience
        #binding.pry
    end

    def make_movies
        movie_array = ImdbCli::Scraper.scrape_with_attributes
        ImdbCli::Movie.create_from_array(movie_array)
    end

    def greeting
        puts "Top 15 Horror movies of all time:"
        puts "\n"
    end

    def user_experience
        # ImdbCli::Movie.all.each do |movie|
        #     puts "#{movie.name}"
        # end
        user_input = nil
        while user_input != "exit"
            puts "\n"
            puts "Please enter the number listed before the movie to find out more: ".red
            user_input = gets.strip
            puts "\n"
            puts 'Finding you the best movies on IMDB....'
            3.times do
                puts "\n"
            end
            movie = movie_selector(user_input)
            puts "Directed by #{movie.director}, #{movie.name} was released in #{movie.year}.".blue
            puts "\n"
            puts "Starring - #{movie.stars}.".blue
            puts "\n"
            puts "Review - #{movie.review}".blue
        end
    end

    def movie_selector(index)
        value = index.to_i - 1
        ImdbCli::Movie.all[value]
    end

end