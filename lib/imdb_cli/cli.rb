class ImdbCli::CLI

    def call
        greeting
        ImdbCli::Scraper.scrape
        user_experience
        #binding.pry
    end

    def greeting
        puts "Top 15 Horror movies of all time:"
        puts "\n"
    end

    def user_experience
        user_input = nil
        while user_input != "exit"
            puts "\n"
            puts "Please enter the number listed before the movie to find out more: "
            user_input = gets.strip
            puts "\n"
            puts "Finding you the best movies on IMDB...."
            puts "\n"
            attributes = ImdbCli::Scraper.scrape_with_attributes
            puts "#{attributes[0]}"
        end
    end

end