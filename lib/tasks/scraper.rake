namespace :scraper do
  desc "fashion scraper"
  task perform_scrape: :environment do
  # Fashion Scraper
  fs = FashionScraper.new
  fs.scrape_www
  fs.scrape_refinery_29
  fs.scrape_elle
  fs.scrape_fashion_spot
  fs.scrape_glamour
  fs.scrape_fashionbeans
  fs.scrape_sharp
  # Food Scraper
  food = FoodScraper.new
  food.scrape_bonappetit
  food.scrape_foodnetwork
  food.scrape_canliving
  food.scrape_organiclife
  food.scrape_torontolife
  end
end