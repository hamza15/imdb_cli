class ImdbCli::CLI

    def call
        puts "Top 15 Horror movies of all time:"
        ImdbCli::Scraper.scrape
        #binding.pry
    end

end