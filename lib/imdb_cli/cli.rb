class ImdbCli::CLI

    def call
        greeting
        ImdbCli::Scraper.scrape
        make_movies
        user_experience
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
        user_input = nil
        while user_input != "exit"
            puts "\n"
            puts "Please enter the number listed before the movie to find out more: ".red
            user_input = gets.strip
            if user_input == 'exit'
                exit
            elsif user_input == 'list'
                call
            elsif validation(user_input)
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
                puts "\n"
                trailer(movie.url)
            else
                puts "--------------------NOT A VALID MOVIE NUMBER--------------------"
                puts "\n"
            end
        end
    end

    def movie_selector(index)
        value = index.to_i - 1
        ImdbCli::Movie.all[value]
    end

    def validation(input)
        valid_array = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15']
        valid_array.include?(input)
    end

    def trailer(url)
        puts "Would you like to watch the trailer? Enter y/n"
        input = gets.strip
        if input == "y"
            system("open", "#{url}")
        elsif input == "exit"
            exit
        end
    end
end