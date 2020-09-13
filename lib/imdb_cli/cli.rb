require 'pry'
require 'nokogiri'
require 'open-uri'

class ImdbCli::CLI

    def call
        puts "Top 15 Horror movies of all time:"
        scrape
        #binding.pry
    end

    def scrape
        doc = Nokogiri::HTML(open("https://www.imdb.com/list/ls062635494/?sort=moviemeter,asc&st_dt=&mode=detail&page=1").read)
        # binding.pry
        # get name of first movie
        # names = doc.css(".lister-list .lister-item-content h3 a")[0].text
        # puts "#{names}"
        # GETS ALL MOVIE NAMES
        doc.css(".lister-item.mode-detail").each do |movie|
            name = movie.css(".lister-item-content h3 a")[0].text
            puts "#{name}"
        end

    end


end