require 'pry'

class ImdbCli::Scraper

    @index_url = "https://www.imdb.com/list/ls062635494/?sort=moviemeter,asc&st_dt=&mode=detail&page=1"

    # Gets names and respective years of top 15 movies (Based on popularity)
    def self.scrape
        doc = Nokogiri::HTML(open(@index_url).read)
        doc.css(".lister-item.mode-detail").each.with_index(1) do |movie, index|
            name = movie.css(".lister-item-content h3 a")[0].text
            year = movie.css(".lister-item-year.text-muted.unbold")[0].text.gsub(/[()]/, "")
            puts "#{index}. #{name} - #{year}".yellow
        end
    end

    #Stores the hash of movie_attributes as an array of movie hashes.
    def self.scrape_with_attributes
        doc = Nokogiri::HTML(open(@index_url).read)
        scraped_movies = []
        doc.css(".lister-item.mode-detail").each do |movie|
            scraped_movies << {
            name: movie.css(".lister-item-content h3 a")[0].text,
            year: movie.css(".lister-item-year.text-muted.unbold")[0].text.gsub(/[()]/, ""),
            director: movie.css(".lister-item-content p.text-muted.text-small")[1].text.gsub("\n",'').strip.split("|")[0].strip.split(":")[1],
            stars:  movie.css(".lister-item-content p.text-muted.text-small")[1].text.gsub("\n",'').strip.split("|")[1].strip.split(":")[1],
            review: movie.css(".list-description").text,
            url: movie.css(".lister-item-image.ribbonize a")[0]["href"].split("/")[-1]
          }
        end
        scraped_movies
    end
end