namespace :scraper do
  desc "fashion scraper"
  task perform_scrape: :environment do
  fs = FashionScraper.new
  # fs.scrape_www
  # fs.scrape_refinery_29
  # fs.scrape_elle
  # fs.scrape_fashion_spot
  # fs.scrape_glamour
  fs.scrape_fashionbeans
  fs.scrape_sharp
  #save each item into to db
  end
end